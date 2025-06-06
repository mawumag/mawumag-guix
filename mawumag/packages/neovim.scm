(define-module (mawumag packages neovim)
  #:use-module (guix build-system gnu)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix utils)
  #:use-module (gnu packages jemalloc)
  #:use-module (gnu packages julia)
  #:use-module (gnu packages libevent)
  #:use-module (gnu packages lua)
  #:use-module (gnu packages serialization)
  #:use-module (gnu packages terminals)
  #:use-module (gnu packages textutils)
  #:use-module (gnu packages tree-sitter)
  #:use-module (gnu packages vim))

(define-public neovim-latest
  (package
    (inherit neovim)
    (name "neovim-latest")
    (version "0.11.2")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/neovim/neovim")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "14zy1mk8h72dhz8sn546l5qyl2lzfpj6nspvgskpsdj19f6abn54"))))
    (inputs (list libuv-for-luv
                  msgpack
                  libtermkey
                  libvterm
                  unibilium
                  jemalloc
                  (if (member (if (%current-target-system)
                                  (gnu-triplet->nix-system (%current-target-system))
                                  (%current-system))
                              (package-supported-systems luajit))
                      luajit
                      lua-5.1)
                  lua5.1-luv
                  lua5.1-lpeg
                  lua5.1-bitop
                  lua5.1-libmpack
                  tree-sitter-latest
                  utf8proc-2.10.0))))

(define-public tree-sitter-latest
  (package
    (inherit tree-sitter)
    (name "tree-sitter")
    (version "0.25.6")
    (source (origin
              (method git-fetch)
              (uri (git-reference
                    (url "https://github.com/tree-sitter/tree-sitter")
                    (commit (string-append "v" version))))
              (file-name (git-file-name name version))
              (sha256
               (base32
                "1kxbxascxf62f7awg0fraxcc1jr0agfim7ma093jwam23kdwbw6v"))
              (modules '((guix build utils)))
              (snippet #~(begin
                           ;; Remove bundled ICU parts
                           (delete-file-recursively "lib/src/unicode")))))))

(define-public utf8proc-2.10.0
  (package
    (name "utf8proc")
    (version "2.10.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/JuliaStrings/utf8proc")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1n1k67x39sk8xnza4w1xkbgbvgb1g7w2a7j2qrqzqaw1lyilqsy2"))))
    (build-system gnu-build-system)
    (native-inputs
     (let ((UNICODE_VERSION "16.0.0"))  ; defined in data/Makefile
       ;; Test data that is otherwise downloaded with curl.
       `(("NormalizationTest.txt"
          ,(origin
             (method url-fetch)
             (uri (string-append "https://www.unicode.org/Public/"
                                 UNICODE_VERSION "/ucd/NormalizationTest.txt"))
             (sha256
              (base32 "1cffwlxgn6sawxb627xqaw3shnnfxq0v7cbgsld5w1z7aca9f4fq"))))
         ("DerivedCoreProperties.txt"
           ,(origin
              (method url-fetch)
              (uri (string-append "https://www.unicode.org/Public/"
                                  UNICODE_VERSION "/ucd/DerivedCoreProperties.txt"))
              (sha256
                (base32 "1gfsq4vdmzi803i2s8ih7mm4fgs907kvkg88kvv9fi4my9hm3lrr"))))
         ("GraphemeBreakTest.txt"
          ,(origin
             (method url-fetch)
             (uri (string-append "https://www.unicode.org/Public/"
                                 UNICODE_VERSION
                                 "/ucd/auxiliary/GraphemeBreakTest.txt"))
             (sha256
              (base32 "1d9w6vdfxakjpp38qjvhgvbl2qx0zv5655ph54dhdb3hs9a96azf"))))

         ;; For tests.
         ("julia" ,julia))))
    (arguments
     `(#:make-flags (list ,(string-append "CC=" (cc-for-target))
                          (string-append "prefix=" (assoc-ref %outputs "out")))
       #:phases
       (modify-phases %standard-phases
         (delete 'configure)
         (add-before 'check 'check-data
           (lambda* (#:key inputs native-inputs #:allow-other-keys)
                    (display native-inputs)
                    (substitute* "test/misc.c"
                                 (("#ifdef UNICODE_VERSION")
                                  "#ifdef FALSE"))
                    (for-each (lambda (i)
                                (copy-file (assoc-ref (or native-inputs inputs) i)
                                           (string-append "data/" i)))
                              '("NormalizationTest.txt" "GraphemeBreakTest.txt"
                                "DerivedCoreProperties.txt")))))))
    (home-page "https://juliastrings.github.io/utf8proc/")
    (synopsis "C library for processing UTF-8 Unicode data")
    (description "utf8proc is a small C library that provides Unicode
normalization, case-folding, and other operations for data in the UTF-8
encoding, supporting Unicode version 9.0.0.")
    (license license:expat)))
