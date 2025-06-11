(define-module (mawumag packages rclone)
  #:use-module (guix build-system go)
  #:use-module (guix git-download)
  #:use-module (guix gexp)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  )

(define-public rclone
  (package
    (name "rclone")
    (version "1.69.3")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
              (url "https://github.com/rclone/rclone")
              (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0p3yi8lhpk2l1cvg6mcw6dfn3g02i7b7q9mw1n69ynkqciqkvcal"))))
    (build-system go-build-system)
    (arguments
     (list
      #:import-path "github.com/rclone/rclone"
      #:install-source? #f
      #:test-subdirs #~(list ".")))
    (native-inputs (list go-http2))
    (synopsis "@code{rsync} for cloud storage")
    (description "@code{Rclone} is a command line program to sync files and
directories to and from different cloud storage providers.

Features include:
@itemize
@item MD5/SHA1 hashes checked at all times for file integrity
@item Timestamps preserved on files
@item Partial syncs supported on a whole file basis
@item Copy mode to just copy new/changed files
@item Sync (one way) mode to make a directory identical
@item Check mode to check for file hash equality
@item Can sync to and from network, e.g., two different cloud accounts
@item Optional encryption (Crypt)
@item Optional cache (Cache)
@item Optional FUSE mount (rclone mount)
@end itemize")
    (home-page "https://rclone.org/")
    (license license:expat)))
