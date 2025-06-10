(define-module (mawumag packages lazygit)
  #:use-module (guix build-system go)
  #:use-module (guix git-download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (gnu packages golang))

(define-public lazygit
  (package
    (name "lazygit")
    (version "0.52.0")
    (source
     (origin
       (method git-fetch)
       (uri (git-reference
             (url "https://github.com/jesseduffield/lazygit")
             (commit (string-append "v" version))))
       (file-name (git-file-name name version))
       (sha256
        (base32 "0nijsnx9nq8kdmjcx9g2fxbj6rmx2wqy1xr5aysgzlc1ysi53cdm"))))
    (build-system go-build-system)
    (arguments
      (list
        #:go go-1.24
        #:tests? #f
        #:import-path "github.com/jesseduffield/lazygit"))
    (home-page "https://github.com/jesseduffield/lazygit")
    (synopsis "simple terminal UI for git commands")
    (description" If you're a mere mortal like me and you're tired of
hearing how powerful git is when in your daily life it's a powerful pain
in your ass, lazygit might be for you.")
    (license license:expat)))
