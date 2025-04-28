(define-module (mawumag packages filen)
	       #:use-module (guix packages)
	       #:use-module (gnu packages linux)
	       #:use-module (guix gexp)
	       #:use-module (guix build-system node)
	       #:use-module (guix download)
	       #:use-module ((guix licenses) #:prefix license:))

(define-public node-graceful-fs-4.2.11
  (package
    (name "node-graceful-fs")
    (version "4.2.11")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/graceful-fs/-/graceful-fs-4.2.11.tgz")
       (sha256
        (base32 "1709vla02prpbf34xqsvkqngvsmp5ypnljvg1pcgxrk1l553fq9r"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("import-fresh" "mkdirp"
                                                  "rimraf" "tap"))))))))
    (home-page "https://github.com/isaacs/node-graceful-fs#readme")
    (synopsis "A drop-in replacement for fs, making various improvements.")
    (description "A drop-in replacement for fs, making various improvements.")
    (license license:isc)))

(define-public node-jsonfile-6.1.0
  (package
    (name "node-jsonfile")
    (version "6.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/jsonfile/-/jsonfile-6.1.0.tgz")
       (sha256
        (base32 "1csrz2dy4chva2qzjxpx6jxjbxqqm6jr64vb2zc3y4cj7b9yxn0b"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "rimraf" "standard"))))))))
    (inputs (list node-universalify-2.0.1 node-graceful-fs-4.2.11))
    (home-page "https://github.com/jprichardson/node-jsonfile#readme")
    (synopsis "Easily read/write JSON files.")
    (description "Easily read/write JSON files.")
    (license license:expat)))

(define-public node-universalify-2.0.1
  (package
    (name "node-universalify")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/universalify/-/universalify-2.0.1.tgz")
       (sha256
        (base32 "0rbqgcdmmz5kqjryyyjyjppa6d1kcxkmwj551cps2dhqnqxk21vx"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("colortape" "coveralls"
                                                  "nyc" "standard" "tape"))))))))
    (home-page "https://github.com/RyanZim/universalify#readme")
    (synopsis
     "Make a callback- or promise-based function support both promises and callbacks.")
    (description
     "Make a callback- or promise-based function support both promises and callbacks.")
    (license license:expat)))

(define-public node-fs-extra-11.3.0
  (package
    (name "node-fs-extra")
    (version "11.3.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/fs-extra/-/fs-extra-11.3.0.tgz")
       (sha256
        (base32 "0w2zfy5rx4hcq46vgry081mpn15dyr9bwp5fiwri0dd3rycmbpk2"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("klaw" "klaw-sync"
                                                  "minimist"
                                                  "mocha"
                                                  "nyc"
                                                  "proxyquire"
                                                  "read-dir-files"
                                                  "standard"))))))))
    (inputs (list node-universalify-2.0.1 node-jsonfile-6.1.0
                  node-graceful-fs-4.2.11))
    (home-page "https://github.com/jprichardson/node-fs-extra")
    (synopsis
     "fs-extra contains methods that aren't included in the vanilla Node.js fs package. Such as recursive mkdir, copy, and remove.")
    (description
     "fs-extra contains methods that aren't included in the vanilla Node.js fs package. Such as recursive mkdir, copy, and remove.")
    (license license:expat)))

(define-public filen
  (package
    (name "filen")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/filen/-/filen-0.1.0.tgz")
       (sha256
        (base32 "0phb4y51s4mnn1fdxwac8xvqwcwkdai4s3f5hjgnb6pklb21qlap"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/fs-extra"
                                                  "@types/node" "typescript"))))))))
    (inputs (list node-fs-extra-11.3.0))
    (home-page "https://www.npmjs.com/package/node-filen")
    (synopsis "")
    (description "")
    (license license:expat)))

