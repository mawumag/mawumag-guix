(define-module (mawumag packages tresorit)
	       #:use-module (guix packages)
	       #:use-module (gnu packages base)
	       #:use-module (gnu packages compression)
           #:use-module (gnu packages gcc)
           #:use-module (gnu packages gl)
	       #:use-module (gnu packages linux)
	       #:use-module (gnu packages xdisorg)
	       #:use-module (gnu packages xorg)
	       #:use-module (guix gexp)
	       #:use-module (guix download)
	       #:use-module (guix licenses)
	       #:use-module (mawumag build-system binary))

(define-public tresorit
  (package
    (name "tresorit")
    (version "1.0.0")
    (source (origin
              (method url-fetch)
              (uri "https://installer.tresorit.com/tresorit_installer.run")
              (sha256
                (base32
                  "1vmnjb8fwgqd0ilcd695i9pin2bmak572dl26yb6wm4i8zjz4nw6"))))
    (build-system binary-build-system)
    (arguments
     `(#:patchelf-plan
       `(("bin/tresorit" ("libc"
                          "gcc:lib"
                          "libx11"
                          "libxcb"
                          "libxext"
                          "libxkbcommon"
                          "mesa"
                          "xcb-util"
                          "xcb-util-image"
                          "xcb-util-keysyms"
                          "xcb-util-renderutil"
                          "xcb-util-wm"))
         ("bin/tresorit-cli" ("libc" "gcc:lib"))
         ("bin/tresorit-daemon" ("libc" "gcc:lib")))
       #:phases
       (modify-phases %standard-phases
         (replace 'unpack
           (lambda _
             ;; Use tail to strip the first 92 lines and output the tar archive
             (with-output-to-file "archive.tar"
               (lambda ()
                 (invoke "tail" "-n+93" ,source)))

             ;; Unpack the tar archive
             (invoke "tar" "xf" "archive.tar")

             ;; Move the contents to bin/
             (rename-file "tresorit_x64" "bin"))))))
    (inputs `(("gcc:lib" ,gcc "lib")
              ("libx11" ,libx11)
              ("libxcb" ,libxcb)
              ("libxext" ,libxext)
              ("libxkbcommon" ,libxkbcommon)
              ("mesa" ,mesa)
              ("xcb-util" ,xcb-util)
              ("xcb-util-image" ,xcb-util-image)
              ("xcb-util-keysyms" ,xcb-util-keysyms)
              ("xcb-util-renderutil" ,xcb-util-renderutil)
              ("xcb-util-wm" ,xcb-util-wm)))
    (synopsis "Tresorit secure cloud storage client")
    (description "Tresorit is a secure cloud storage service.")
    (home-page "https://tresorit.com")
    (license #f)))  ;; License is unknown, so use #f

