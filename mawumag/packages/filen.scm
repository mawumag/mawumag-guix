(define-module (mawumag packages filen)
  #:use-module (mawumag packages node)
  #:use-module (guix build-system node)
  #:use-module (guix gexp)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (gnu packages linux))

(define-public filen-desktop
  (package
    (name "filen-desktop")
    (version "3.0.47")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/FilenCloudDienste/filen-desktop")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "1zf5z9hxq9k2qs8pjiacdqkiqax6ljr2wziixdnipcfz9al4jbsr"))))
    (build-system node-build-system)
    (inputs (list node-electron-notarize-2.4.0
                  node-filen-network-drive-0.9.42))
    (home-page "https://github.com/FilenCloudDienste/filen-desktop")
    (synopsis "")
    (description "")
    (license license:gpl3)))

