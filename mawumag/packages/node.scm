(define-module (mawumag packages node)
  #:use-module (guix build-system node)
  #:use-module (guix gexp)
  #:use-module (guix download)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (guix packages)
  #:use-module (guix-science packages rstudio-node)
  #:use-module (gnu packages linux))

(define-public node-accepts-2.0.0
  (package
    (name "node-accepts")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/accepts/-/accepts-2.0.0.tgz")
       (sha256
        (base32 "0hi56wcavwsv8s4mpvks7gywmjdiqcqa0a91vga8rpw8gmgr2g8p"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "deep-equal"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-negotiator-1.0.0 node-mime-types-3.0.1))
    (home-page "https://github.com/jshttp/accepts#readme")
    (synopsis "Higher-level content negotiation")
    (description "Higher-level content negotiation")
    (license license:expat)))

(define-public node-after-0.8.2
  (package
    (name "node-after")
    (version "0.8.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/after/-/after-0.8.2.tgz")
       (sha256
        (base32 "16xhivd4sl1rssfhjby9yaw0afa71y3yi3z3arwlyqbzf87pwk22"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha"))))))))
    (home-page "https://github.com/Raynos/after#readme")
    (synopsis "after - tiny flow control")
    (description "after - tiny flow control")
    (license license:expat)))

(define-public node-agentkeepalive-4.6.0
  (package
    (name "node-agentkeepalive")
    (version "4.6.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/agentkeepalive/-/agentkeepalive-4.6.0.tgz")
       (sha256
        (base32 "16jns5qpamw5p7xkjmp5gffwa9d1800ld81brngzhv14z49pbpn3"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("coffee" "cross-env"
                                                  "egg-bin"
                                                  "eslint"
                                                  "eslint-config-egg"
                                                  "git-contributor"
                                                  "mm"
                                                  "pedding"
                                                  "typescript"))))))))
    (inputs (list node-humanize-ms-1.2.1))
    (home-page "https://github.com/node-modules/agentkeepalive#readme")
    (synopsis "Missing keepalive http.Agent")
    (description "Missing keepalive http.Agent")
    (license license:expat)))

(define-public node-arraybuffer-slice-0.0.7
  (package
    (name "node-arraybuffer-slice")
    (version "0.0.7")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/arraybuffer.slice/-/arraybuffer.slice-0.0.7.tgz")
       (sha256
        (base32 "1mx3pvs4f6gx3d2z42jimjhl0a8ihld31qpgyyfmzqwrmb2aryzk"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "expect.js"))))))))
    (home-page "https://github.com/rase-/arraybuffer.slice")
    (synopsis "Exports a function for slicing ArrayBuffers (no polyfilling)")
    (description
     "Exports a function for slicing ArrayBuffers (no polyfilling)")
    (license license:expat)))

(define-public node-asn1-js-5.4.1
  (package
    (name "node-asn1-js")
    (version "5.4.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/asn1.js/-/asn1.js-5.4.1.tgz")
       (sha256
        (base32 "18f2z3cg0gljsv2ycv8gl6r8cbdhdx6mizn9xkl4w9aza45rxicw"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint" "mocha"))))))))
    (inputs (list node-safer-buffer-2.1.2 node-minimalistic-assert-1.0.1
                  node-inherits-2.0.4 node-bn-js-4.12.2))
    (home-page "https://github.com/indutny/asn1.js")
    (synopsis "ASN.1 encoder and decoder")
    (description "ASN.1 encoder and decoder")
    (license license:expat)))

(define-public node-at-least-node-1.0.0
  (package
    (name "node-at-least-node")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/at-least-node/-/at-least-node-1.0.0.tgz")
       (sha256
        (base32 "1yl3b109jav8v9hbbhqpdfaj31igi5mfjfgflx48rdnj7ml2gvbj"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("ava" "rewire" "semver"))))))))
    (home-page "https://github.com/RyanZim/at-least-node#readme")
    (synopsis "Lightweight Node.js version sniffing/comparison")
    (description "Lightweight Node.js version sniffing/comparison")
    (license license:isc)))

(define-public node-atomic-sleep-1.0.0
  (package
    (name "node-atomic-sleep")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/atomic-sleep/-/atomic-sleep-1.0.0.tgz")
       (sha256
        (base32 "0r39ll0kh0v6m74aj5bhcrl87h1np32pgbr3cfk5yardp3j9wx24"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("standard" "tap" "tape"))))))))
    (home-page "https://github.com/davidmarkclements/atomic-sleep#readme")
    (synopsis
     "Zero CPU overhead, zero dependency, true event-loop blocking sleep")
    (description
     "Zero CPU overhead, zero dependency, true event-loop blocking sleep")
    (license license:expat)))

(define-public node-axios-0.28.1
  (package
    (name "node-axios")
    (version "0.28.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/axios/-/axios-0.28.1.tgz")
       (sha256
        (base32 "03shn14awp82sgb2m2p6gfxnwdsq88f5p4skyqqy0pn5hynb8r76"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("grunt" "karma"
                                                  "mocha"
                                                  "sinon"
                                                  "multer"
                                                  "rollup"
                                                  "dtslint"
                                                  "express"
                                                  "webpack"
                                                  "minimist"
                                                  "coveralls"
                                                  "cross-env"
                                                  "grunt-cli"
                                                  "formidable"
                                                  "typescript"
                                                  "body-parser"
                                                  "es6-promise"
                                                  "grunt-karma"
                                                  "grunt-shell"
                                                  "karma-sinon"
                                                  "grunt-banner"
                                                  "grunt-eslint"
                                                  "jasmine-core"
                                                  "grunt-webpack"
                                                  "karma-jasmine"
                                                  "karma-webpack"
                                                  "grunt-mocha-test"
                                                  "load-grunt-tasks"
                                                  "url-search-params"
                                                  "karma-jasmine-ajax"
                                                  "webpack-dev-server"
                                                  "@rollup/plugin-json"
                                                  "grunt-contrib-clean"
                                                  "grunt-contrib-watch"
                                                  "@rollup/plugin-babel"
                                                  "karma-sauce-launcher"
                                                  "rollup-plugin-terser"
                                                  "karma-chrome-launcher"
                                                  "karma-safari-launcher"
                                                  "terser-webpack-plugin"
                                                  "karma-firefox-launcher"
                                                  "karma-sourcemap-loader"
                                                  "@rollup/plugin-commonjs"
                                                  "abortcontroller-polyfill"
                                                  "@rollup/plugin-multi-entry"
                                                  "@rollup/plugin-node-resolve"
                                                  "istanbul-instrumenter-loader"))))))))
    (inputs (list node-follow-redirects-1.15.9 node-proxy-from-env-1.1.0
                  node-form-data-4.0.3))
    (home-page "https://axios-http.com")
    (synopsis "Promise based HTTP client for the browser and node.js")
    (description "Promise based HTTP client for the browser and node.js")
    (license license:expat)))

(define-public node-axios-1.9.0
  (package
    (name "node-axios")
    (version "1.9.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/axios/-/axios-1.9.0.tgz")
       (sha256
        (base32 "0ifpfdd8zdnj2kwyj3mixwrjyd3k4ibwp3aqzxhvj1l5fj7n4n37"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@babel/core"
                                                  "@babel/preset-env"
                                                  "@commitlint/cli"
                                                  "@commitlint/config-conventional"
                                                  "@release-it/conventional-changelog"
                                                  "@rollup/plugin-babel"
                                                  "@rollup/plugin-commonjs"
                                                  "@rollup/plugin-json"
                                                  "@rollup/plugin-multi-entry"
                                                  "@rollup/plugin-node-resolve"
                                                  "abortcontroller-polyfill"
                                                  "auto-changelog"
                                                  "body-parser"
                                                  "chalk"
                                                  "coveralls"
                                                  "cross-env"
                                                  "dev-null"
                                                  "dtslint"
                                                  "es6-promise"
                                                  "eslint"
                                                  "express"
                                                  "formdata-node"
                                                  "formidable"
                                                  "fs-extra"
                                                  "get-stream"
                                                  "gulp"
                                                  "gzip-size"
                                                  "handlebars"
                                                  "husky"
                                                  "istanbul-instrumenter-loader"
                                                  "jasmine-core"
                                                  "karma"
                                                  "karma-chrome-launcher"
                                                  "karma-firefox-launcher"
                                                  "karma-jasmine"
                                                  "karma-jasmine-ajax"
                                                  "karma-rollup-preprocessor"
                                                  "karma-safari-launcher"
                                                  "karma-sauce-launcher"
                                                  "karma-sinon"
                                                  "karma-sourcemap-loader"
                                                  "memoizee"
                                                  "minimist"
                                                  "mocha"
                                                  "multer"
                                                  "pretty-bytes"
                                                  "release-it"
                                                  "rollup"
                                                  "rollup-plugin-auto-external"
                                                  "rollup-plugin-bundle-size"
                                                  "rollup-plugin-terser"
                                                  "sinon"
                                                  "stream-throttle"
                                                  "string-replace-async"
                                                  "terser-webpack-plugin"
                                                  "typescript"
                                                  "@rollup/plugin-alias"))))))))
    (inputs (list node-proxy-from-env-1.1.0 node-form-data-4.0.3
                  node-follow-redirects-1.15.9))
    (home-page "https://axios-http.com")
    (synopsis "Promise based HTTP client for the browser and node.js")
    (description "Promise based HTTP client for the browser and node.js")
    (license license:expat)))

(define-public node-backo2-1.0.2
  (package
    (name "node-backo2")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/backo2/-/backo2-1.0.2.tgz")
       (sha256
        (base32 "04ns0z2j1v55aw7bq5kjm3d2kmzsv50yf9fkcp7wiywk0fq89yv7"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "should"))))))))
    (home-page "https://github.com/mokesmokes/backo")
    (synopsis "simple backoff based on segmentio/backo")
    (description "simple backoff based on segmentio/backo")
    (license license:expat)))

(define-public node-base64-arraybuffer-0.1.4
  (package
    (name "node-base64-arraybuffer")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/base64-arraybuffer/-/base64-arraybuffer-0.1.4.tgz")
       (sha256
        (base32 "1ckjm9i31hkc7yzd1b2fchs1f6zkcns766y4w75r3cr4ws1qvm2h"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("grunt" "grunt-cli"
                                                  "grunt-contrib-jshint"
                                                  "grunt-contrib-nodeunit"
                                                  "grunt-contrib-watch"))))))))
    (home-page "https://github.com/niklasvh/base64-arraybuffer")
    (synopsis "Encode/decode base64 data into ArrayBuffers")
    (description "Encode/decode base64 data into ArrayBuffers")
    (license #f)))

(define-public node-blob-0.0.5
  (package
    (name "node-blob")
    (version "0.0.5")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/blob/-/blob-0.0.5.tgz")
       (sha256
        (base32 "01prm3b9jkb008gv7hy8qx6pqlfy195zd9n50j572dbs91bynr2x"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "expect.js" "zuul"
                                                  "browserify"))))))))
    (home-page "https://github.com/webmodules/blob")
    (synopsis
     "Abstracts out Blob and uses BlobBulder in cases where it is supported with any vendor prefix.")
    (description
     "Abstracts out Blob and uses BlobBulder in cases where it is supported with any vendor prefix.")
    (license license:expat)))

(define-public node-bn-js-4.12.2
  (package
    (name "node-bn-js")
    (version "4.12.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/bn.js/-/bn.js-4.12.2.tgz")
       (sha256
        (base32 "0s4slnir1cj4z4rs5sfd8qmy386x5wjx4bsvj7c0aacswir16m9g"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "istanbul"
                                                  "semistandard"))))))))
    (home-page "https://github.com/indutny/bn.js")
    (synopsis "Big number implementation in pure javascript")
    (description "Big number implementation in pure javascript")
    (license license:expat)))

(define-public node-body-parser-1.20.3
  (package
    (name "node-body-parser")
    (version "1.20.3")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/body-parser/-/body-parser-1.20.3.tgz")
       (sha256
        (base32 "11kf9cx1sbajm3hdym66k10a8r310pvcsdpag6l1bajn8jzzlh6n"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "methods"
                                                  "supertest"
                                                  "safe-buffer"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-content-type-1.0.5
                  node-on-finished-2.4.1
                  node-http-errors-2.0.0
                  node-iconv-lite-0.4.24
                  node-raw-body-2.5.2
                  node-type-is-1.6.18
                  node-destroy-1.2.0
                  node-unpipe-1.0.0
                  node-debug-2.6.9
                  node-bytes-3.1.2
                  node-depd-2.0.0
                  node-qs-6.13.0))
    (home-page "https://github.com/expressjs/body-parser#readme")
    (synopsis "Node.js body parsing middleware")
    (description "Node.js body parsing middleware")
    (license license:expat)))

(define-public node-body-parser-2.2.0
  (package
    (name "node-body-parser")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/body-parser/-/body-parser-2.2.0.tgz")
       (sha256
        (base32 "1xpsbhcrhzbgnaxjsw06xadqfnp3qp5kyyqidbqa8nndvmyaqg5n"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"
                                                  "supertest"))))))))
    (inputs (list node-type-is-2.0.1
                  node-raw-body-3.0.0
                  node-qs-6.14.0
                  node-on-finished-2.4.1
                  node-iconv-lite-0.6.3
                  node-http-errors-2.0.0
                  node-debug-4.4.1
                  node-content-type-1.0.5
                  node-bytes-3.1.2))
    (home-page "https://github.com/expressjs/body-parser#readme")
    (synopsis "Node.js body parsing middleware")
    (description "Node.js body parsing middleware")
    (license license:expat)))

(define-public node-brorand-1.1.0
  (package
    (name "node-brorand")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/brorand/-/brorand-1.1.0.tgz")
       (sha256
        (base32 "098jln7s6cqp4xrjfbikxr91lkvnvxp928nrjr56kx8jvdb0dpba"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha"))))))))
    (home-page "https://github.com/indutny/brorand")
    (synopsis "Random number generator for browsers and node.js")
    (description "Random number generator for browsers and node.js")
    (license license:expat)))

(define-public node-buffer-6.0.3
  (package
    (name "node-buffer")
    (version "6.0.3")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/buffer/-/buffer-6.0.3.tgz")
       (sha256
        (base32 "1xaim9bjs0l0any341dijprl7x576k6sgbm9qnrgdz2a494nynsm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("airtap" "benchmark"
                                                  "browserify"
                                                  "concat-stream"
                                                  "hyperquest"
                                                  "is-buffer"
                                                  "is-nan"
                                                  "split"
                                                  "standard"
                                                  "tape"
                                                  "through2"
                                                  "uglify-js"))))))))
    (inputs (list node-ieee754-1.2.1 node-base64-js-1.5.1))
    (home-page "https://github.com/feross/buffer")
    (synopsis "Node.js Buffer API, for the browser")
    (description "Node.js Buffer API, for the browser")
    (license license:expat)))

(define-public node-bufferutil-4.0.9
  (package
    (name "node-bufferutil")
    (version "4.0.9")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/bufferutil/-/bufferutil-4.0.9.tgz")
       (sha256
        (base32 "1fghdd0bp7z04y90gh536g96xdwi2v2v4g1rivpxpz3pv5f0bjj9"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "node-gyp"
                                                  "prebuildify"))))))))
    (inputs (list node-node-gyp-build-4.8.4))
    (home-page "https://github.com/websockets/bufferutil")
    (synopsis "WebSocket buffer utils")
    (description "WebSocket buffer utils")
    (license license:expat)))

(define-public node-call-bind-apply-helpers-1.0.2
  (package
    (name "node-call-bind-apply-helpers")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/call-bind-apply-helpers/-/call-bind-apply-helpers-1.0.2.tgz")
       (sha256
        (base32 "0b3xqfkmcxhancq8h4cd3282ryg9h5rnf2h2530zbvdbvgwrygh7"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/for-each"
                                                  "@types/function-bind"
                                                  "@types/object-inspect"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "encoding"
                                                  "es-value-fixtures"
                                                  "eslint"
                                                  "evalmd"
                                                  "for-each"
                                                  "has-strict-mode"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "object-inspect"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-function-bind-1.1.2 node-es-errors-1.3.0))
    (home-page "https://github.com/ljharb/call-bind-apply-helpers#readme")
    (synopsis
     "Helper functions around Function call/apply/bind, for use in `call-bind`")
    (description
     "Helper functions around Function call/apply/bind, for use in `call-bind`")
    (license license:expat)))

(define-public node-call-bound-1.0.4
  (package
    (name "node-call-bound")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/call-bound/-/call-bound-1.0.4.tgz")
       (sha256
        (base32 "0cmxdglg3lrrz7apqgvqbkd57jicr98fxwhi92rvkwgd5x4ny21j"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/call-bind"
                                                  "@types/get-intrinsic"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "encoding"
                                                  "es-value-fixtures"
                                                  "eslint"
                                                  "evalmd"
                                                  "for-each"
                                                  "gopd"
                                                  "has-strict-mode"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "object-inspect"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-get-intrinsic-1.3.0 node-call-bind-apply-helpers-1.0.2))
    (home-page "https://github.com/ljharb/call-bound#readme")
    (synopsis
     "Robust call-bound JavaScript intrinsics, using `call-bind` and `get-intrinsic`.")
    (description
     "Robust call-bound JavaScript intrinsics, using `call-bind` and `get-intrinsic`.")
    (license license:expat)))

(define-public node-charenc-0.0.2
  (package
    (name "node-charenc")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/charenc/-/charenc-0.0.2.tgz")
       (sha256
        (base32 "16p8w7pwxwpxsdkxxdb51wzyzj47i67kc4l2x29xz03866jnjrz3"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/pvorb/node-charenc#readme")
    (synopsis "character encoding utilities")
    (description "character encoding utilities")
    (license license:bsd-3)))

(define-public node-clone-2.1.2
  (package
    (name "node-clone")
    (version "2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/clone/-/clone-2.1.2.tgz")
       (sha256
        (base32 "0gg90kb5jpm6bcmqfhvmfbx8dralysv5v9ph8b38a89ni9hkmxkx"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nodeunit"))))))))
    (home-page "https://github.com/pvorb/node-clone#readme")
    (synopsis "deep cloning of objects and arrays")
    (description "deep cloning of objects and arrays")
    (license license:expat)))

(define-public node-component-bind-1.0.0
  (package
    (name "node-component-bind")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/component-bind/-/component-bind-1.0.0.tgz")
       (sha256
        (base32 "10p4a7kh9hvsc0q3y8z9m34ihrkp61a9a50y1gnl8xdvd3q1plhw"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "should"))))))))
    (home-page "https://github.com/component/bind")
    (synopsis "function binding utility")
    (description "function binding utility")
    (license #f)))

(define-public node-component-emitter-1.3.1
  (package
    (name "node-component-emitter")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/component-emitter/-/component-emitter-1.3.1.tgz")
       (sha256
        (base32 "1jdk1p6kfv1n0nkd6mr91hnzl1j8229lask16n2slavq99nk0p7n"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "should"))))))))
    (home-page "https://github.com/sindresorhus/component-emitter#readme")
    (synopsis "Event emitter")
    (description "Event emitter")
    (license license:expat)))

(define-public node-component-inherit-0.0.3
  (package
    (name "node-component-inherit")
    (version "0.0.3")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/component-inherit/-/component-inherit-0.0.3.tgz")
       (sha256
        (base32 "0jravb910129ikld9xh6bgrgf25q5sh87s12d2j1gd83f0f0qxjk"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/component/inherit")
    (synopsis "Prototype inheritance utility")
    (description "Prototype inheritance utility")
    (license #f)))

(define-public node-content-disposition-1.0.0
  (package
    (name "node-content-disposition")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/content-disposition/-/content-disposition-1.0.0.tgz")
       (sha256
        (base32 "13z85wzrcb7p1pwhcmkf0k13f2x8l849liw91mnp62ra2cjpcdhm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "deep-equal"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-safe-buffer-5.2.1))
    (home-page "https://github.com/jshttp/content-disposition#readme")
    (synopsis "Create and parse Content-Disposition header")
    (description "Create and parse Content-Disposition header")
    (license license:expat)))

(define-public node-cookie-0.7.1
  (package
    (name "node-cookie")
    (version "0.7.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/cookie/-/cookie-0.7.1.tgz")
       (sha256
        (base32 "1zajpxf0mgmsl4lh63dmlmqahcaqxbpch37k40qkcviz4gvb6s8p"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "benchmark"
                                                  "top-sites"
                                                  "safe-buffer"
                                                  "beautify-benchmark"
                                                  "eslint-plugin-markdown"))))))))
    (home-page "https://github.com/jshttp/cookie#readme")
    (synopsis "HTTP server cookie parsing and serialization")
    (description "HTTP server cookie parsing and serialization")
    (license license:expat)))

(define-public node-cookie-0.7.2
  (package
    (name "node-cookie")
    (version "0.7.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/cookie/-/cookie-0.7.2.tgz")
       (sha256
        (base32 "084ymsdgqj3jc00gh39cbfbmh1vval1wy2ifd88hlqqw4pw61cbn"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "benchmark"
                                                  "top-sites"
                                                  "safe-buffer"
                                                  "beautify-benchmark"
                                                  "eslint-plugin-markdown"))))))))
    (home-page "https://github.com/jshttp/cookie#readme")
    (synopsis "HTTP server cookie parsing and serialization")
    (description "HTTP server cookie parsing and serialization")
    (license license:expat)))

(define-public node-cookie-signature-1.2.2
  (package
    (name "node-cookie-signature")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/cookie-signature/-/cookie-signature-1.2.2.tgz")
       (sha256
        (base32 "1lsk6l4501i1sil49gdwdkaj0nzr5asm5ybx1ppn17i93jpvlasd"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "should"))))))))
    (home-page "https://github.com/visionmedia/node-cookie-signature#readme")
    (synopsis "Sign and unsign cookies")
    (description "Sign and unsign cookies")
    (license license:expat)))

(define-public node-crypt-0.0.2
  (package
    (name "node-crypt")
    (version "0.0.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/crypt/-/crypt-0.0.2.tgz")
       (sha256
        (base32 "16cha55871vkifcbbzqwiwc3yf8gixkkwak2dbiivb79a4rk8781"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/pvorb/node-crypt#readme")
    (synopsis "utilities for encryption and hashing")
    (description "utilities for encryption and hashing")
    (license license:bsd-3)))

(define-public node-crypto-api-v1-1.0.0
  (package
    (name "node-crypto-api-v1")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/crypto-api-v1/-/crypto-api-v1-1.0.0.tgz")
       (sha256
        (base32 "0w29g92z515pjcqmh2xb46qjbjbqv4j0y7nq9zx5yd36l5fz311l"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@babel/core"
                                                  "@babel/polyfill"
                                                  "@babel/preset-env"
                                                  "@babel/register"
                                                  "babel"
                                                  "babel-loader"
                                                  "chai"
                                                  "codacy-coverage"
                                                  "codeclimate-test-reporter"
                                                  "coveralls"
                                                  "esdoc"
                                                  "esdoc-standard-plugin"
                                                  "html-webpack-externals-plugin"
                                                  "html-webpack-plugin"
                                                  "mocha"
                                                  "nyc"
                                                  "uglifyjs-webpack-plugin"
                                                  "unminified-webpack-plugin"
                                                  "webpack"
                                                  "webpack-cli"))))))))
    (home-page "https://github.com/nf404/crypto-api/")
    (synopsis "Hashing and encrypting library with no depedencies")
    (description "Hashing and encrypting library with no depedencies")
    (license license:expat)))

(define-public node-crypto-js-4.2.0
  (package
    (name "node-crypto-js")
    (version "4.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/crypto-js/-/crypto-js-4.2.0.tgz")
       (sha256
        (base32 "02ffnv18cxlcvdh2688rrd93kv1bzvszvzddgw6h1biyidjqla1d"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "http://github.com/brix/crypto-js")
    (synopsis "JavaScript library of crypto standards.")
    (description "JavaScript library of crypto standards.")
    (license license:expat)))

(define-public node-debug-3.1.0
  (package
    (name "node-debug")
    (version "3.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/debug/-/debug-3.1.0.tgz")
       (sha256
        (base32 "1v6mixq7h1plnik0v6nf543yh7s0kppr7j08ayfi83nfjbgfbj6s"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("chai" "karma"
                                                  "mocha"
                                                  "sinon"
                                                  "eslint"
                                                  "rimraf"
                                                  "istanbul"
                                                  "coveralls"
                                                  "browserify"
                                                  "karma-chai"
                                                  "sinon-chai"
                                                  "karma-mocha"
                                                  "karma-sinon"
                                                  "concurrently"
                                                  "mocha-lcov-reporter"
                                                  "karma-phantomjs-launcher"))))))))
    (inputs (list node-ms-2.0.0))
    (home-page "https://github.com/visionmedia/debug#readme")
    (synopsis "small debugging utility")
    (description "small debugging utility")
    (license license:expat)))

(define-public node-debug-4.4.1
  (package
    (name "node-debug")
    (version "4.4.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/debug/-/debug-4.4.1.tgz")
       (sha256
        (base32 "1knsscg6xbni9rj66a0p27x1zxsaixvwljgq930vk2ahy33afp16"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("brfs" "browserify"
                                                  "coveralls"
                                                  "karma"
                                                  "karma-browserify"
                                                  "karma-chrome-launcher"
                                                  "karma-mocha"
                                                  "mocha"
                                                  "mocha-lcov-reporter"
                                                  "sinon"
                                                  "xo"))))))))
    (inputs (list node-ms-2.1.3))
    (home-page "https://github.com/debug-js/debug#readme")
    (synopsis "Lightweight debugging utility for Node.js and the browser")
    (description "Lightweight debugging utility for Node.js and the browser")
    (license license:expat)))

(define-public node-debug-4.4.1
  (package
    (name "node-debug")
    (version "4.4.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/debug/-/debug-4.4.1.tgz")
       (sha256
        (base32 "1knsscg6xbni9rj66a0p27x1zxsaixvwljgq930vk2ahy33afp16"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("brfs" "browserify"
                                                  "coveralls"
                                                  "karma"
                                                  "karma-browserify"
                                                  "karma-chrome-launcher"
                                                  "karma-mocha"
                                                  "mocha"
                                                  "mocha-lcov-reporter"
                                                  "sinon"
                                                  "xo"))))))))
    (inputs (list node-ms-2.1.3))
    (home-page "https://github.com/debug-js/debug#readme")
    (synopsis "Lightweight debugging utility for Node.js and the browser")
    (description "Lightweight debugging utility for Node.js and the browser")
    (license license:expat)))

(define-public node-des-js-1.1.0
  (package
    (name "node-des-js")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/des.js/-/des.js-1.1.0.tgz")
       (sha256
        (base32 "17gg4jlp9w2rkxizfn80zhnigs8pq862jmv21avrpjiq9qlvh1ls"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("jshint" "mocha"))))))))
    (inputs (list node-minimalistic-assert-1.0.1 node-inherits-2.0.4))
    (home-page "https://github.com/indutny/des.js#readme")
    (synopsis "DES implementation")
    (description "DES implementation")
    (license license:expat)))

(define-public node-diskusage-ng-1.0.4
  (package
    (name "node-diskusage-ng")
    (version "1.0.4")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/diskusage-ng/-/diskusage-ng-1.0.4.tgz")
       (sha256
        (base32 "03lp88496qzlf2ywx25ny2k4jl3plm1sjh6apr6fgbygzz8w3gqg"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tape"))))))))
    (home-page "https://github.com/iximiuz/node-diskusage-ng")
    (synopsis "Get disk usage info in pure JS via OS built-in tools")
    (description "Get disk usage info in pure JS via OS built-in tools")
    (license license:expat)))

(define-public node-dotenv-16.5.0
  (package
    (name "node-dotenv")
    (version "16.5.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/dotenv/-/dotenv-16.5.0.tgz")
       (sha256
        (base32 "02831fia3jppjgg973n3dgp2ffh4waqgpirknnizw5mxyynwyl1z"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/node" "decache"
                                                  "sinon"
                                                  "standard"
                                                  "standard-version"
                                                  "tap"
                                                  "typescript"))))))))
    (home-page "https://github.com/motdotla/dotenv#readme")
    (synopsis "Loads environment variables from .env file")
    (description "Loads environment variables from .env file")
    (license license:bsd-2)))

(define-public node-dunder-proto-1.0.1
  (package
    (name "node-dunder-proto")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/dunder-proto/-/dunder-proto-1.0.1.tgz")
       (sha256
        (base32 "1nyg4r9qjc33kmgixdi5xpb0qsjivy2dcn8wjbwhvhc2ihi444zd"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "encoding"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-gopd-1.2.0 node-es-errors-1.3.0
                  node-call-bind-apply-helpers-1.0.2))
    (home-page "https://github.com/es-shims/dunder-proto#readme")
    (synopsis
     "If available, the `Object.prototype.__proto__` accessor and mutator, call-bound")
    (description
     "If available, the `Object.prototype.__proto__` accessor and mutator, call-bound")
    (license license:expat)))

(define-public node-electron-notarize-2.4.0
  (package
    (name "node-electron-notarize")
    (version "2.4.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/@electron/notarize/-/notarize-2.4.0.tgz")
       (sha256
        (base32 "0i9qn4jr3n6z620ly0ycbszirwsfd1aah1hh5iafj3z5w82bkydw"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("jest" "ts-jest"
                                                  "typedoc"
                                                  "prettier"
                                                  "typescript"
                                                  "@types/jest"
                                                  "@types/node"
                                                  "@types/debug"
                                                  "@types/fs-extra"
                                                  "@types/promise-retry"
                                                  "typedoc-plugin-missing-exports"))))))))
    (inputs (list node-promise-retry-2.0.1 node-fs-extra-9.1.0
                  node-debug-4.4.1))
    (home-page "https://github.com/electron/notarize#readme")
    (synopsis "Notarize your Electron app")
    (description "Notarize your Electron app")
    (license license:expat)))

(define-public node-elliptic-6.5.7
  (package
    (name "node-elliptic")
    (version "6.5.7")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/elliptic/-/elliptic-6.5.7.tgz")
       (sha256
        (base32 "0mxiap5md0mw4mw8pqj2bw24vx16cxiw3hi6ibqwbw097vck4hq3"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("brfs" "grunt"
                                                  "mocha"
                                                  "eslint"
                                                  "istanbul"
                                                  "coveralls"
                                                  "grunt-cli"
                                                  "grunt-saucelabs"
                                                  "grunt-browserify"
                                                  "grunt-contrib-copy"
                                                  "grunt-contrib-uglify"
                                                  "grunt-mocha-istanbul"
                                                  "grunt-contrib-connect"))))))))
    (inputs (list node-minimalistic-crypto-utils-1.0.1
                  node-minimalistic-assert-1.0.1
                  node-hmac-drbg-1.0.1
                  node-inherits-2.0.4
                  node-hash-js-1.1.7
                  node-brorand-1.1.0
                  node-bn-js-4.12.2))
    (home-page "https://github.com/indutny/elliptic")
    (synopsis "EC cryptography")
    (description "EC cryptography")
    (license license:expat)))

(define-public node-encodeurl-2.0.0
  (package
    (name "node-encodeurl")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/encodeurl/-/encodeurl-2.0.0.tgz")
       (sha256
        (base32 "0agvpr5psd2nymhp51l5502fzifkshxxlnixl7kzkf2ii25l2blv"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "eslint"
                                                  "istanbul"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-standard"))))))))
    (home-page "https://github.com/pillarjs/encodeurl#readme")
    (synopsis
     "Encode a URL to a percent-encoded form, excluding already-encoded sequences")
    (description
     "Encode a URL to a percent-encoded form, excluding already-encoded sequences")
    (license license:expat)))

(define-public node-engine-io-client-3.5.4
  (package
    (name "node-engine-io-client")
    (version "3.5.4")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/engine.io-client/-/engine.io-client-3.5.4.tgz")
       (sha256
        (base32 "08cqrrarz2cjlbh5jz0y0jfbamcnfy34j3kmcrw4jgl76j6nsmqh"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("del" "blob"
                                                  "gulp"
                                                  "zuul"
                                                  "mocha"
                                                  "express"
                                                  "webpack"
                                                  "istanbul"
                                                  "derequire"
                                                  "engine.io"
                                                  "expect.js"
                                                  "gulp-file"
                                                  "babel-core"
                                                  "gulp-mocha"
                                                  "zuul-ngrok"
                                                  "gulp-eslint"
                                                  "babel-eslint"
                                                  "babel-loader"
                                                  "concat-stream"
                                                  "gulp-istanbul"
                                                  "webpack-stream"
                                                  "gulp-task-listing"
                                                  "babel-preset-es2015"
                                                  "zuul-builder-webpack"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-xmlhttprequest-ssl-1.6.3
                  node-component-inherit-0.0.3
                  node-component-emitter-1.3.1
                  node-engine-io-parser-2.2.1
                  node-parseuri-0.0.6
                  node-has-cors-1.1.0
                  node-parseqs-0.0.6
                  node-indexof-0.0.1
                  node-yeast-0.1.2
                  node-debug-3.1.0
                  node-ws-7.5.10))
    (home-page "https://github.com/socketio/engine.io-client")
    (synopsis "Client for the realtime Engine")
    (description "Client for the realtime Engine")
    (license license:expat)))

(define-public node-engine-io-parser-2.2.1
  (package
    (name "node-engine-io-parser")
    (version "2.2.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/engine.io-parser/-/engine.io-parser-2.2.1.tgz")
       (sha256
        (base32 "1x24ggssk8r5hs7y4lbspf0kzs0imbd1pj39yyvi0vdx92qv780w"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("zuul" "mocha" "benchmark"
                                                  "expect.js" "zuul-ngrok"
                                                  "socket.io-browsers"))))))))
    (inputs (list node-base64-arraybuffer-0.1.4 node-arraybuffer-slice-0.0.7
                  node-has-binary2-1.0.3 node-after-0.8.2 node-blob-0.0.5))
    (home-page "https://github.com/socketio/engine.io-parser")
    (synopsis "Parser for the client for the realtime Engine")
    (description "Parser for the client for the realtime Engine")
    (license license:expat)))

(define-public node-err-code-2.0.3
  (package
    (name "node-err-code")
    (version "2.0.3")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/err-code/-/err-code-2.0.3.tgz")
       (sha256
        (base32 "1qj8n8paszjn4w39wgd19885wp49hj98fd8hlp7isbqm0i54yrm5"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@satazor/eslint-config"
                                                  "browserify" "eslint"
                                                  "expect.js" "mocha"))))))))
    (home-page "https://github.com/IndigoUnited/js-err-code#readme")
    (synopsis "Create an error with a code")
    (description "Create an error with a code")
    (license license:expat)))

(define-public node-es-define-property-1.0.1
  (package
    (name "node-es-define-property")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/es-define-property/-/es-define-property-1.0.1.tgz")
       (sha256
        (base32 "1xw50gnqd3d7nyfcl5a5lzrhxa0sjq7qyzaw1n5hld1166qvi1jr"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/gopd"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "encoding"
                                                  "eslint"
                                                  "evalmd"
                                                  "gopd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (home-page "https://github.com/ljharb/es-define-property#readme")
    (synopsis "`Object.defineProperty`, but not IE 8's broken one.")
    (description "`Object.defineProperty`, but not IE 8's broken one.")
    (license license:expat)))

(define-public node-es-errors-1.3.0
  (package
    (name "node-es-errors")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/es-errors/-/es-errors-1.3.0.tgz")
       (sha256
        (base32 "14q935xgv4cblmy8lk3brx4ypwxpgrid77r1lfnbilsbbg1x2kfi"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "@types/tape"
                                                  "aud"
                                                  "auto-changelog"
                                                  "eclint"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (home-page "https://github.com/ljharb/es-errors#readme")
    (synopsis "A simple cache for a few of the JS Error constructors.")
    (description "A simple cache for a few of the JS Error constructors.")
    (license license:expat)))

(define-public node-es-object-atoms-1.1.1
  (package
    (name "node-es-object-atoms")
    (version "1.1.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/es-object-atoms/-/es-object-atoms-1.1.1.tgz")
       (sha256
        (base32 "1kkrwpp6nz2nc32zxin52xnngyg7qg38c5ljy5xyx2l1azby861y"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "eclint"
                                                  "encoding"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-es-errors-1.3.0))
    (home-page "https://github.com/ljharb/es-object-atoms#readme")
    (synopsis
     "ES Object-related atoms: Object, ToObject, RequireObjectCoercible")
    (description
     "ES Object-related atoms: Object, ToObject, RequireObjectCoercible")
    (license license:expat)))

(define-public node-es-set-tostringtag-2.1.0
  (package
    (name "node-es-set-tostringtag")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/es-set-tostringtag/-/es-set-tostringtag-2.1.0.tgz")
       (sha256
        (base32 "0gdrn28p1xnj8j98b6f1sf15xy4h0cd38alazwml1vikbhdgaxan"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/get-intrinsic"
                                                  "@types/has-symbols"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "encoding"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-hasown-2.0.2 node-has-tostringtag-1.0.2
                  node-get-intrinsic-1.3.0 node-es-errors-1.3.0))
    (home-page "https://github.com/es-shims/es-set-tostringtag#readme")
    (synopsis
     "A helper to optimistically set Symbol.toStringTag, when possible.")
    (description
     "A helper to optimistically set Symbol.toStringTag, when possible.")
    (license license:expat)))

(define-public node-eventemitter3-5.0.1
  (package
    (name "node-eventemitter3")
    (version "5.0.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/eventemitter3/-/eventemitter3-5.0.1.tgz")
       (sha256
        (base32 "0b4m1zzxl9izqd3wrp8arq1azjqbagc6qkzlrkq9rjbjayhd721i"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@rollup/plugin-commonjs"
                                                  "@rollup/plugin-terser"
                                                  "assume"
                                                  "c8"
                                                  "mocha"
                                                  "pre-commit"
                                                  "rimraf"
                                                  "rollup"
                                                  "sauce-browsers"
                                                  "sauce-test"))))))))
    (home-page "https://github.com/primus/eventemitter3#readme")
    (synopsis
     "EventEmitter3 focuses on performance while maintaining a Node.js AND browser compatible interface.")
    (description
     "EventEmitter3 focuses on performance while maintaining a Node.js AND browser compatible interface.")
    (license license:expat)))

(define-public node-express-4.21.2
  (package
    (name "node-express")
    (version "4.21.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/express/-/express-4.21.2.tgz")
       (sha256
        (base32 "0270hgkkhxvvhjiyfsi28lyfv1alyfj26wddqr9zpby7glgajhzw"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("ejs" "hbs"
                                                  "nyc"
                                                  "after"
                                                  "mocha"
                                                  "vhost"
                                                  "eslint"
                                                  "marked"
                                                  "morgan"
                                                  "supertest"
                                                  "connect-redis"
                                                  "cookie-parser"
                                                  "cookie-session"
                                                  "express-session"
                                                  "method-override"
                                                  "pbkdf2-password"))))))))
    (inputs (list node-content-disposition-0.5.4
                  node-merge-descriptors-1.0.3
                  node-cookie-signature-1.0.6
                  node-setprototypeof-1.2.0
                  node-path-to-regexp-0.1.12
                  node-array-flatten-1.1.1
                  node-serve-static-1.16.2
                  node-range-parser-1.2.1
                  node-finalhandler-1.3.1
                  node-content-type-1.0.5
                  node-utils-merge-1.0.1
                  node-safe-buffer-5.2.1
                  node-on-finished-2.4.1
                  node-http-errors-2.0.0
                  node-escape-html-1.0.3
                  node-body-parser-1.20.3
                  node-proxy-addr-2.0.7
                  node-encodeurl-2.0.0
                  node-statuses-2.0.1
                  node-parseurl-1.3.3
                  node-type-is-1.6.18
                  node-methods-1.1.2
                  node-accepts-1.3.8
                  node-cookie-0.7.1
                  node-fresh-0.5.2
                  node-debug-2.6.9
                  node-vary-1.1.2
                  node-send-0.19.0
                  node-etag-1.8.1
                  node-depd-2.0.0
                  node-qs-6.13.0))
    (home-page "http://expressjs.com/")
    (synopsis "Fast, unopinionated, minimalist web framework")
    (description "Fast, unopinionated, minimalist web framework")
    (license license:expat)))

(define-public node-express-5.1.0
  (package
    (name "node-express")
    (version "5.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/express/-/express-5.1.0.tgz")
       (sha256
        (base32 "06ry76cxyh8nxk9511kyhghjnmdflidc7ma3hk3j1mal9r6xnsyx"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("ejs" "hbs"
                                                  "nyc"
                                                  "after"
                                                  "mocha"
                                                  "vhost"
                                                  "eslint"
                                                  "marked"
                                                  "morgan"
                                                  "supertest"
                                                  "connect-redis"
                                                  "cookie-parser"
                                                  "cookie-session"
                                                  "express-session"
                                                  "method-override"
                                                  "pbkdf2-password"))))))))
    (inputs (list node-content-disposition-1.0.0
                  node-merge-descriptors-2.0.0
                  node-cookie-signature-1.2.2
                  node-serve-static-2.2.0
                  node-range-parser-1.2.1
                  node-finalhandler-2.1.0
                  node-content-type-1.0.5
                  node-on-finished-2.4.1
                  node-http-errors-2.0.0
                  node-escape-html-1.0.3
                  node-body-parser-2.2.0
                  node-proxy-addr-2.0.7
                  node-mime-types-3.0.1
                  node-encodeurl-2.0.0
                  node-statuses-2.0.2
                  node-parseurl-1.3.3
                  node-type-is-2.0.1
                  node-accepts-2.0.0
                  node-router-2.2.0
                  node-cookie-0.7.2
                  node-fresh-2.0.0
                  node-debug-4.4.1
                  node-vary-1.1.2
                  node-send-1.2.0
                  node-once-1.4.0
                  node-etag-1.8.1
                  node-qs-6.14.0))
    (home-page "https://expressjs.com/")
    (synopsis "Fast, unopinionated, minimalist web framework")
    (description "Fast, unopinionated, minimalist web framework")
    (license license:expat)))

(define-public node-express-rate-limit-7.5.0
  (package
    (name "node-express-rate-limit")
    (version "7.5.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/express-rate-limit/-/express-rate-limit-7.5.0.tgz")
       (sha256
        (base32 "03wd2gl4rg3394w072kiwmk4bgbld6pvd1kqxxz5qlxzzjr8y4gv"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@express-rate-limit/prettier"
                                                  "@express-rate-limit/tsconfig"
                                                  "@jest/globals"
                                                  "@types/express"
                                                  "@types/jest"
                                                  "@types/node"
                                                  "@types/supertest"
                                                  "del-cli"
                                                  "dts-bundle-generator"
                                                  "esbuild"
                                                  "express"
                                                  "husky"
                                                  "jest"
                                                  "lint-staged"
                                                  "mintlify"
                                                  "npm-run-all"
                                                  "ratelimit-header-parser"
                                                  "supertest"
                                                  "ts-jest"
                                                  "ts-node"
                                                  "typescript"
                                                  "xo"))))))))
    (home-page "https://github.com/express-rate-limit/express-rate-limit")
    (synopsis
     "Basic IP rate-limiting middleware for Express. Use to limit repeated requests to public APIs and/or endpoints such as password reset.")
    (description
     "Basic IP rate-limiting middleware for Express. Use to limit repeated requests to public APIs and/or endpoints such as password reset.")
    (license license:expat)))

(define-public node-fast-redact-3.5.0
  (package
    (name "node-fast-redact")
    (version "3.5.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/fast-redact/-/fast-redact-3.5.0.tgz")
       (sha256
        (base32 "0dch4lq61r4smzqvkxrxfgpxwmcgzjpsizmhyxkip75raifc7kv8"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("fastbench" "pino-noir"
                                                  "snazzy" "standard" "tap"))))))))
    (home-page "https://github.com/davidmarkclements/fast-redact#readme")
    (synopsis "very fast object redaction")
    (description "very fast object redaction")
    (license license:expat)))

(define-public node-filen-network-drive-0.9.42
  (package
    (name "node-filen-network-drive")
    (version "0.9.42")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/@filen/network-drive/-/network-drive-0.9.42.tgz")
       (sha256
        (base32 "0v0vjz34h3j116hr4pq8l4h1bz8r5yf2v87g0r62qlif28z2xrz7"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tsx" "jest"
                                                  "eslint"
                                                  "rimraf"
                                                  "typescript"
                                                  "@types/uuid"
                                                  "@jest/globals"
                                                  "@types/fs-extra"
                                                  "@types/write-file-atomic"
                                                  "@typescript-eslint/parser"
                                                  "@typescript-eslint/eslint-plugin"))))))))
    (inputs (list node-rotating-file-stream-3.2.6
                  node-vscode-sudo-prompt-9.3.1
                  node-write-file-atomic-5.0.1
                  node-filen-webdav-0.2.67
                  node-diskusage-ng-1.0.4
                  node-sudo-prompt-9.2.1
                  node-filen-sdk-0.1.193
                  node-fs-extra-11.3.0
                  node-axios-1.9.0
                  node-uuid-10.0.0
                  node-pino-9.7.0))
    (home-page "https://filen.io")
    (synopsis "Filen Network Drive")
    (description "Filen Network Drive")
    (license #f)))

(define-public node-filen-sdk-0.1.193
  (package
    (name "node-filen-sdk")
    (version "0.1.193")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/@filen/sdk/-/sdk-0.1.193.tgz")
       (sha256
        (base32 "0bzprykqmj1vfqxqnmhcd1w62khzzl53j27dnxkvr0khr27lvjz0"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tsx" "jest"
                                                  "util"
                                                  "assert"
                                                  "buffer"
                                                  "eslint"
                                                  "rimraf"
                                                  "rollup"
                                                  "process"
                                                  "ts-jest"
                                                  "typedoc"
                                                  "webpack"
                                                  "browserfs"
                                                  "ts-loader"
                                                  "bufferutil"
                                                  "typescript"
                                                  "@babel/core"
                                                  "@types/jest"
                                                  "@types/uuid"
                                                  "webpack-cli"
                                                  "babel-loader"
                                                  "concurrently"
                                                  "@jest/globals"
                                                  "os-browserify"
                                                  "utf-8-validate"
                                                  "@types/fs-extra"
                                                  "browserify-zlib"
                                                  "http-browserify"
                                                  "path-browserify"
                                                  "@types/crypto-js"
                                                  "https-browserify"
                                                  "@babel/preset-env"
                                                  "@types/mime-types"
                                                  "crypto-browserify"
                                                  "rollup-plugin-dts"
                                                  "stream-browserify"
                                                  "@rollup/plugin-json"
                                                  "rollup-plugin-esbuild"
                                                  "terser-webpack-plugin"
                                                  "@types/progress-stream"
                                                  "@rollup/plugin-commonjs"
                                                  "@types/socket.io-client"
                                                  "@babel/preset-typescript"
                                                  "@types/write-file-atomic"
                                                  "@rollup/plugin-typescript"
                                                  "@typescript-eslint/parser"
                                                  "@rollup/plugin-node-resolve"
                                                  "rollup-plugin-polyfill-node"
                                                  "node-polyfill-webpack-plugin"
                                                  "rollup-plugin-node-polyfills"
                                                  "typedoc-plugin-missing-exports"
                                                  "@typescript-eslint/eslint-plugin"
                                                  "babel-plugin-transform-remove-console"))))))))
    (inputs (list node-js-crypto-key-utils-1.0.7
                  node-write-file-atomic-6.0.0
                  node-socket-io-client-2.5.0
                  node-progress-stream-2.0.0
                  node-agentkeepalive-4.6.0
                  node-eventemitter3-5.0.1
                  node-crypto-api-v1-1.0.0
                  node-mime-types-2.1.35
                  node-striptags-3.2.0
                  node-js-xxhash-4.0.0
                  node-crypto-js-4.2.0
                  node-fs-extra-11.3.0
                  node-axios-0.28.1
                  node-uuid-10.0.0))
    (home-page "https://sdk-ts-docs.filen.io")
    (synopsis "Filen SDK")
    (description "Filen SDK")
    (license #f)))

(define-public node-filen-sdk-0.2.8
  (package
    (name "node-filen-sdk")
    (version "0.2.8")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/@filen/sdk/-/sdk-0.2.8.tgz")
       (sha256
        (base32 "1qdww21n01cx9skngv8ir2ixlq9mq2yjkq0njsd54s3bshyrgp3r"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tsx" "eslint"
                                                  "rimraf"
                                                  "vitest"
                                                  "globals"
                                                  "typedoc"
                                                  "typescript"
                                                  "@types/uuid"
                                                  "@types/fs-extra"
                                                  "@types/crypto-js"
                                                  "@types/mime-types"
                                                  "@types/progress-stream"
                                                  "@types/socket.io-client"
                                                  "@typescript-eslint/parser"
                                                  "typedoc-plugin-missing-exports"
                                                  "@typescript-eslint/eslint-plugin"))))))))
    (inputs (list node-js-crypto-key-utils-1.0.7
                  node-socket-io-client-2.5.0
                  node-progress-stream-2.0.0
                  node-agentkeepalive-4.6.0
                  node-eventemitter3-5.0.1
                  node-crypto-api-v1-1.0.0
                  node-noble-hashes-1.8.0
                  node-mime-types-2.1.35
                  node-striptags-3.2.0
                  node-js-xxhash-4.0.0
                  node-crypto-js-4.2.0
                  node-fs-extra-11.3.0
                  node-dotenv-16.5.0
                  node-axios-0.28.1
                  node-uuid-11.1.0))
    (home-page "https://sdk-ts-docs.filen.io")
    (synopsis "Filen SDK")
    (description "Filen SDK")
    (license #f)))

(define-public node-filen-webdav-0.2.67
  (package
    (name "node-filen-webdav")
    (version "0.2.67")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/@filen/webdav/-/webdav-0.2.67.tgz")
       (sha256
        (base32 "10zg797hcrsnn450aip69sdp4vmvgv3d6pnibk1iwbkq2injasfm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@jest/globals"
                                                  "@types/express"
                                                  "@types/fs-extra"
                                                  "@types/lodash"
                                                  "@types/mime-types"
                                                  "@types/picomatch"
                                                  "@types/uuid"
                                                  "@types/write-file-atomic"
                                                  "@types/xml2js"
                                                  "@typescript-eslint/eslint-plugin"
                                                  "@typescript-eslint/parser"
                                                  "cross-env"
                                                  "eslint"
                                                  "jest"
                                                  "rimraf"
                                                  "ts-node"
                                                  "tsx"
                                                  "typescript"))))))))
    (inputs (list node-xml2js-0.6.2
                  node-xml-js-builder-1.0.3
                  node-write-file-atomic-5.0.1
                  node-uuid-10.0.0
                  node-selfsigned-2.4.1
                  node-rotating-file-stream-3.2.6
                  node-pino-9.7.0
                  node-picomatch-4.0.2
                  node-node-cache-5.1.2
                  node-mime-types-2.1.35
                  node-js-xxhash-4.0.0
                  node-fs-extra-11.3.0
                  node-express-rate-limit-7.5.0
                  node-express-4.21.2
                  node-body-parser-1.20.3
                  node-filen-sdk-0.2.8))
    (home-page "https://filen.io")
    (synopsis "Filen WebDAV")
    (description "Filen WebDAV")
    (license #f)))

(define-public node-finalhandler-1.3.1
  (package
    (name "node-finalhandler")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/finalhandler/-/finalhandler-1.3.1.tgz")
       (sha256
        (base32 "1bn1fn4m2jv490cckfkb8i4axbzfjjyp2fy7wdyb1dcqx5972l7d"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "supertest"
                                                  "safe-buffer"
                                                  "readable-stream"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-on-finished-2.4.1
                  node-escape-html-1.0.3
                  node-encodeurl-2.0.0
                  node-statuses-2.0.1
                  node-parseurl-1.3.3
                  node-unpipe-1.0.0
                  node-debug-2.6.9))
    (home-page "https://github.com/pillarjs/finalhandler#readme")
    (synopsis "Node.js final http responder")
    (description "Node.js final http responder")
    (license license:expat)))

(define-public node-finalhandler-2.1.0
  (package
    (name "node-finalhandler")
    (version "2.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/finalhandler/-/finalhandler-2.1.0.tgz")
       (sha256
        (base32 "161sk1l9fhvgl6a7617g8niim1gx9hsxxcjhf60h6c8h8yzy3z9z"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "supertest"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-on-finished-2.4.1
                  node-escape-html-1.0.3
                  node-encodeurl-2.0.0
                  node-statuses-2.0.2
                  node-parseurl-1.3.3
                  node-debug-4.4.1))
    (home-page "https://github.com/pillarjs/finalhandler#readme")
    (synopsis "Node.js final http responder")
    (description "Node.js final http responder")
    (license license:expat)))

(define-public node-follow-redirects-1.15.9
  (package
    (name "node-follow-redirects")
    (version "1.15.9")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/follow-redirects/-/follow-redirects-1.15.9.tgz")
       (sha256
        (base32 "13wbmil5wc2ks0gb82zk5sb311gjarb2r1ap3phphcc34518pjq8"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "lolex" "mocha"
                                                  "eslint" "express"
                                                  "concat-stream"))))))))
    (home-page "https://github.com/follow-redirects/follow-redirects")
    (synopsis "HTTP and HTTPS modules that follow redirects.")
    (description "HTTP and HTTPS modules that follow redirects.")
    (license license:expat)))

(define-public node-form-data-4.0.3
  (package
    (name "node-form-data")
    (version "4.0.3")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/form-data/-/form-data-4.0.3.tgz")
       (sha256
        (base32 "0gbssvzbbh6fbv8xvxiag9f7bwvs7dvasn9pjgaww7fllnm0raw5"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "browserify"
                                                  "browserify-istanbul"
                                                  "coveralls"
                                                  "cross-spawn"
                                                  "eslint"
                                                  "fake"
                                                  "far"
                                                  "formidable"
                                                  "in-publish"
                                                  "is-node-modern"
                                                  "istanbul"
                                                  "obake"
                                                  "pkgfiles"
                                                  "request"
                                                  "rimraf"
                                                  "tape"))))))))
    (inputs (list node-mime-types-2.1.35 node-hasown-2.0.2
                  node-es-set-tostringtag-2.1.0 node-combined-stream-1.0.8
                  node-asynckit-0.4.0))
    (home-page "https://github.com/form-data/form-data#readme")
    (synopsis
     "A library to create readable \"multipart/form-data\" streams. Can be used to submit forms and file uploads to other web applications.")
    (description
     "A library to create readable \"multipart/form-data\" streams. Can be used to submit forms and file uploads to other web applications.")
    (license license:expat)))

(define-public node-fresh-2.0.0
  (package
    (name "node-fresh")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/fresh/-/fresh-2.0.0.tgz")
       (sha256
        (base32 "1mvs4wihlr6bw05h7q12771qrkwrssm26bk80ysv4qjzn1x3j25d"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "benchmark"
                                                  "beautify-benchmark"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (home-page "https://github.com/jshttp/fresh#readme")
    (synopsis "HTTP response freshness testing")
    (description "HTTP response freshness testing")
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

(define-public node-fs-extra-9.1.0
  (package
    (name "node-fs-extra")
    (version "9.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/fs-extra/-/fs-extra-9.1.0.tgz")
       (sha256
        (base32 "0fniby4ck1ihrbwkjfgpdxcci03hrn1p938c333298gcs6hzhw1x"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "klaw"
                                                  "mocha"
                                                  "minimist"
                                                  "standard"
                                                  "coveralls"
                                                  "klaw-sync"
                                                  "proxyquire"
                                                  "read-dir-files"))))))))
    (inputs (list node-at-least-node-1.0.0 node-universalify-2.0.1
                  node-graceful-fs-4.2.11 node-jsonfile-6.1.0))
    (home-page "https://github.com/jprichardson/node-fs-extra")
    (synopsis
     "fs-extra contains methods that aren't included in the vanilla Node.js fs package. Such as recursive mkdir, copy, and remove.")
    (description
     "fs-extra contains methods that aren't included in the vanilla Node.js fs package. Such as recursive mkdir, copy, and remove.")
    (license license:expat)))
(define-public node-function-bind-1.1.2
  (package
    (name "node-function-bind")
    (version "1.1.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/function-bind/-/function-bind-1.1.2.tgz")
       (sha256
        (base32 "1ah7x13hmwwfslk72h2rs21c5vqnsxyzqifl2x7lb8823djh4i3h"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "aud"
                                                  "auto-changelog"
                                                  "eslint"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"))))))))
    (home-page "https://github.com/Raynos/function-bind")
    (synopsis "Implementation of Function.prototype.bind")
    (description "Implementation of Function.prototype.bind")
    (license license:expat)))

(define-public node-get-intrinsic-1.3.0
  (package
    (name "node-get-intrinsic")
    (version "1.3.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/get-intrinsic/-/get-intrinsic-1.3.0.tgz")
       (sha256
        (base32 "0i05g3xvqgv16ss19k3jprfnkqsln2n4m7wgn3xldzh09vjjfbk6"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "auto-changelog"
                                                  "call-bound"
                                                  "encoding"
                                                  "es-abstract"
                                                  "es-value-fixtures"
                                                  "eslint"
                                                  "evalmd"
                                                  "for-each"
                                                  "make-async-function"
                                                  "make-async-generator-function"
                                                  "make-generator-function"
                                                  "mock-property"
                                                  "npmignore"
                                                  "nyc"
                                                  "object-inspect"
                                                  "safe-publish-latest"
                                                  "tape"))))))))
    (inputs (list node-math-intrinsics-1.1.0
                  node-hasown-2.0.2
                  node-has-symbols-1.1.0
                  node-gopd-1.2.0
                  node-get-proto-1.0.1
                  node-function-bind-1.1.2
                  node-es-object-atoms-1.1.1
                  node-es-errors-1.3.0
                  node-es-define-property-1.0.1
                  node-call-bind-apply-helpers-1.0.2))
    (home-page "https://github.com/ljharb/get-intrinsic#readme")
    (synopsis
     "Get and robustly cache all JS language-level intrinsics at first require time")
    (description
     "Get and robustly cache all JS language-level intrinsics at first require time")
    (license license:expat)))

(define-public node-get-proto-1.0.1
  (package
    (name "node-get-proto")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/get-proto/-/get-proto-1.0.1.tgz")
       (sha256
        (base32 "1086swsp92367j7m6canvgf6zwghh0iqr9f2bwndh7qzzcmcab7b"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-es-object-atoms-1.1.1 node-dunder-proto-1.0.1))
    (home-page "https://github.com/ljharb/get-proto#readme")
    (synopsis "Robustly get the [[Prototype]] of an object")
    (description "Robustly get the [[Prototype]] of an object")
    (license license:expat)))

(define-public node-gopd-1.2.0
  (package
    (name "node-gopd")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/gopd/-/gopd-1.2.0.tgz")
       (sha256
        (base32 "10nskxn4cwbfd9i9nzy2r7pf0zm46j9z7dzvd0adr1fj9pgd0dnm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "encoding"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (home-page "https://github.com/ljharb/gopd#readme")
    (synopsis
     "`Object.getOwnPropertyDescriptor`, but accounts for IE's broken implementation.")
    (description
     "`Object.getOwnPropertyDescriptor`, but accounts for IE's broken implementation.")
    (license license:expat)))

(define-public node-has-binary2-1.0.3
  (package
    (name "node-has-binary2")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/has-binary2/-/has-binary2-1.0.3.tgz")
       (sha256
        (base32 "0m7simiwvd7qzldibcj5wlc1hjzvhf30kn1g7dl7p3a4x3469gdy"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("better-assert" "mocha"
                                                  "semistandard"))))))))
    (inputs (list node-isarray-2.0.1))
    (home-page "https://www.npmjs.com/package/node-has-binary2")
    (synopsis
     "A function that takes anything in javascript and returns true if its argument contains binary data.")
    (description
     "A function that takes anything in javascript and returns true if its argument contains binary data.")
    (license license:expat)))

(define-public node-has-cors-1.1.0
  (package
    (name "node-has-cors")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/has-cors/-/has-cors-1.1.0.tgz")
       (sha256
        (base32 "14qjz84wniylbwmpfad03mjzy2hmh8ly5fjvwwlz790ls9d1zj68"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "chai"))))))))
    (home-page "https://github.com/component/has-cors")
    (synopsis "Detects support for Cross-Origin Resource Sharing")
    (description "Detects support for Cross-Origin Resource Sharing")
    (license license:expat)))

(define-public node-has-symbols-1.1.0
  (package
    (name "node-has-symbols")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/has-symbols/-/has-symbols-1.1.0.tgz")
       (sha256
        (base32 "1ig7dbwgg0kbjg2wc7arp7a28g6l2rwc27lsvhnxzf185x9wfq24"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/core-js"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "core-js"
                                                  "encoding"
                                                  "eslint"
                                                  "get-own-property-symbols"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (home-page "https://github.com/ljharb/has-symbols#readme")
    (synopsis
     "Determine if the JS environment has Symbol support. Supports spec, or shams.")
    (description
     "Determine if the JS environment has Symbol support. Supports spec, or shams.")
    (license license:expat)))

(define-public node-has-tostringtag-1.0.2
  (package
    (name "node-has-tostringtag")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/has-tostringtag/-/has-tostringtag-1.0.2.tgz")
       (sha256
        (base32 "0yzgy2kkf5z4w3x68r1ymm3aln7ji4ndfis7z1qn56hpy7ip876w"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "@types/has-symbols"
                                                  "@types/tape"
                                                  "aud"
                                                  "auto-changelog"
                                                  "core-js"
                                                  "eslint"
                                                  "get-own-property-symbols"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-has-symbols-1.1.0))
    (home-page "https://github.com/inspect-js/has-tostringtag#readme")
    (synopsis
     "Determine if the JS environment has `Symbol.toStringTag` support. Supports spec, or shams.")
    (description
     "Determine if the JS environment has `Symbol.toStringTag` support. Supports spec, or shams.")
    (license license:expat)))

(define-public node-hash-js-1.1.7
  (package
    (name "node-hash-js")
    (version "1.1.7")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/hash.js/-/hash.js-1.1.7.tgz")
       (sha256
        (base32 "19lccrqxgndiwfcpv1xzmapmwr74rydbzm2ynvnjy19kpl6gxbcf"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint" "mocha"))))))))
    (inputs (list node-minimalistic-assert-1.0.1 node-inherits-2.0.4))
    (home-page "https://github.com/indutny/hash.js")
    (synopsis
     "Various hash functions that could be run by both browser and node")
    (description
     "Various hash functions that could be run by both browser and node")
    (license license:expat)))

(define-public node-hasown-2.0.2
  (package
    (name "node-hasown")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/hasown/-/hasown-2.0.2.tgz")
       (sha256
        (base32 "0zc0za6zy8y2iwy31ayzwmi4j912j382iwr9xsv09bhirp9c9kah"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/function-bind"
                                                  "@types/mock-property"
                                                  "@types/tape"
                                                  "aud"
                                                  "auto-changelog"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "mock-property"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-function-bind-1.1.2))
    (home-page "https://github.com/inspect-js/hasOwn#readme")
    (synopsis "A robust, ES3 compatible, \"has own property\" predicate.")
    (description "A robust, ES3 compatible, \"has own property\" predicate.")
    (license license:expat)))

(define-public node-hmac-drbg-1.0.1
  (package
    (name "node-hmac-drbg")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/hmac-drbg/-/hmac-drbg-1.0.1.tgz")
       (sha256
        (base32 "0qjrwdicm82v3amswcbjgfa3lvfy7kv29wffvz5mb6m473cp04rj"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha"))))))))
    (inputs (list node-minimalistic-crypto-utils-1.0.1
                  node-minimalistic-assert-1.0.1 node-hash-js-1.1.7))
    (home-page "https://github.com/indutny/hmac-drbg#readme")
    (synopsis "Deterministic random bit generator (hmac)")
    (description "Deterministic random bit generator (hmac)")
    (license license:expat)))

(define-public node-humanize-ms-1.2.1
  (package
    (name "node-humanize-ms")
    (version "1.2.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/humanize-ms/-/humanize-ms-1.2.1.tgz")
       (sha256
        (base32 "09sy84kkmvq1la85iws84w2jv1phdsf5jswg7mk7qjbr47dyc3sl"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("autod" "mocha" "should"
                                                  "istanbul" "benchmark"
                                                  "beautify-benchmark"))))))))
    (inputs (list node-ms-2.1.3))
    (home-page "https://github.com/node-modules/humanize-ms#readme")
    (synopsis "transform humanize time to ms")
    (description "transform humanize time to ms")
    (license license:expat)))

(define-public node-husky-9.1.7
  (package
    (name "node-husky")
    (version "9.1.7")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/husky/-/husky-9.1.7.tgz")
       (sha256
        (base32 "037y8knk56sf36kpxr0yf9m92x9kfncl91655b9sy4lbp973a3kj"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/typicode/husky#readme")
    (synopsis "Modern native Git hooks")
    (description "Modern native Git hooks")
    (license license:expat)))

(define-public node-imurmurhash-0.1.4
  (package
    (name "node-imurmurhash")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/imurmurhash/-/imurmurhash-0.1.4.tgz")
       (sha256
        (base32 "0q6bf91h2g5dhvcdss74sjvp5irimd97hp73jb8p2wvajqqs08xc"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/jensyt/imurmurhash-js")
    (synopsis "An incremental implementation of MurmurHash3")
    (description "An incremental implementation of MurmurHash3")
    (license license:expat)))

(define-public node-indexof-0.0.1
  (package
    (name "node-indexof")
    (version "0.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/indexof/-/indexof-0.0.1.tgz")
       (sha256
        (base32 "05r8vc0ybcjnz23agfvs1jvqbbh6lf2his7c1fjfhyncmwvbld4w"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://www.npmjs.com/package/node-indexof")
    (synopsis "Microsoft sucks")
    (description "Microsoft sucks")
    (license #f)))

(define-public node-is-promise-4.0.0
  (package
    (name "node-is-promise")
    (version "4.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/is-promise/-/is-promise-4.0.0.tgz")
       (sha256
        (base32 "19s5njn24k6ra9c4skkzjhjfaq0d1izkxxicfsw07ykn70br2f45"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/then/is-promise#readme")
    (synopsis "Test whether an object looks like a promises-a+ promise")
    (description "Test whether an object looks like a promises-a+ promise")
    (license license:expat)))

(define-public node-isarray-2.0.1
  (package
    (name "node-isarray")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/isarray/-/isarray-2.0.1.tgz")
       (sha256
        (base32 "1id2ljvwgg3qrx9672is7km4bi7bkcm708r28ag0v338zxkqfkm3"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tape"))))))))
    (home-page "https://github.com/juliangruber/isarray")
    (synopsis "Array#isArray for older browsers")
    (description "Array#isArray for older browsers")
    (license license:expat)))

(define-public node-js-crypto-aes-1.0.6
  (package
    (name "node-js-crypto-aes")
    (version "1.0.6")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-crypto-aes/-/js-crypto-aes-1.0.6.tgz")
       (sha256
        (base32 "0j1a0zg03i9sl0al2yi7jnbg5d3lzmkwhgjympzmz1dwzlf6dd7p"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("js-crypto-random"
                                                  "js-encoding-utils"))))))))
    (inputs (list node-js-crypto-env-1.0.5))
    (home-page
     "https://github.com/junkurihara/jscu/tree/master/packages/js-crypto-aes#readme")
    (synopsis
     "Universal Module for AES Encryption and Decryption in JavaScript")
    (description
     "Universal Module for AES Encryption and Decryption in JavaScript")
    (license license:expat)))

(define-public node-js-crypto-env-1.0.5
  (package
    (name "node-js-crypto-env")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-crypto-env/-/js-crypto-env-1.0.5.tgz")
       (sha256
        (base32 "1indzpzcvhgmbwfmqyyh583ns5pgllqidqgxa816i6rggw4w2ral"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page
     "https://github.com/junkurihara/jscu/tree/master/packages/js-crypto-env#readme")
    (synopsis "Shared environment modules for jscu")
    (description "Shared environment modules for jscu")
    (license license:expat)))

(define-public node-js-crypto-hash-1.0.7
  (package
    (name "node-js-crypto-hash")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-crypto-hash/-/js-crypto-hash-1.0.7.tgz")
       (sha256
        (base32 "1c7azib63zfng5d5hwxgc10b7292ydhski1k5fzqgnvsyvyn5g1n"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("js-encoding-utils"))))))))
    (inputs (list node-sha3-2.1.4 node-md5-2.3.0 node-js-crypto-env-1.0.5
                  node-hash-js-1.1.7 node-buffer-6.0.3))
    (home-page
     "https://github.com/junkurihara/jscu/tree/master/packages/js-crypto-hash#readme")
    (synopsis "Universal Module for Hash Function in JavaScript")
    (description "Universal Module for Hash Function in JavaScript")
    (license license:expat)))

(define-public node-js-crypto-hmac-1.0.7
  (package
    (name "node-js-crypto-hmac")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-crypto-hmac/-/js-crypto-hmac-1.0.7.tgz")
       (sha256
        (base32 "1g8bvq7b6pcgqp9g7ihzjw4h9vb726zbvjknh0hzf5fryv097591"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("js-crypto-random"
                                                  "js-encoding-utils"))))))))
    (inputs (list node-js-crypto-hash-1.0.7 node-js-crypto-env-1.0.5))
    (home-page
     "https://github.com/junkurihara/jscu/tree/master/packages/js-crypto-hmac#readme")
    (synopsis
     "Universal Module for HMAC (Hash-based Message Authentication Code) in JavaScript")
    (description
     "Universal Module for HMAC (Hash-based Message Authentication Code) in JavaScript")
    (license license:expat)))

(define-public node-js-crypto-key-utils-1.0.7
  (package
    (name "node-js-crypto-key-utils")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-crypto-key-utils/-/js-crypto-key-utils-1.0.7.tgz")
       (sha256
        (base32 "15wh5rf0249zm2qv9z0pvkxvcnwp2mbk9yc84jfiqpj3yixzzzi4"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (inputs (list node-lodash-clonedeep-4.5.0
                  node-js-encoding-utils-0.7.3
                  node-js-crypto-random-1.0.5
                  node-js-crypto-pbkdf-1.0.7
                  node-js-crypto-hash-1.0.7
                  node-js-crypto-aes-1.0.6
                  node-elliptic-6.5.7
                  node-des-js-1.1.0
                  node-buffer-6.0.3
                  node-asn1-js-5.4.1))
    (home-page
     "https://github.com/junkurihara/jscu/tree/master/packages/js-crypto-key-utils#readme")
    (synopsis
     "Universal Module for Cryptographic Key Utilities in JavaScript, including PEM-JWK converters")
    (description
     "Universal Module for Cryptographic Key Utilities in JavaScript, including PEM-JWK converters")
    (license license:expat)))

(define-public node-js-crypto-pbkdf-1.0.7
  (package
    (name "node-js-crypto-pbkdf")
    (version "1.0.7")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-crypto-pbkdf/-/js-crypto-pbkdf-1.0.7.tgz")
       (sha256
        (base32 "1mmdxllxr5glrvns5bbzicwghnvxqbgnx9pqpmk6bln4sjkayaym"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (inputs (list node-js-encoding-utils-0.7.3 node-js-crypto-hmac-1.0.7
                  node-js-crypto-hash-1.0.7))
    (home-page
     "https://github.com/junkurihara/jscu/tree/master/packages/js-crypto-pbkdf#readme")
    (synopsis
     "Universal Module for Password-based Key Derivation Function (PBKDF) in JavaScript")
    (description
     "Universal Module for Password-based Key Derivation Function (PBKDF) in JavaScript")
    (license license:expat)))

(define-public node-js-crypto-random-1.0.5
  (package
    (name "node-js-crypto-random")
    (version "1.0.5")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-crypto-random/-/js-crypto-random-1.0.5.tgz")
       (sha256
        (base32 "0x09dzhxci6a1r3g08zsb0pn6p8vv2xpiid9wwzkqfkpczvrrpgm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (inputs (list node-js-crypto-env-1.0.5))
    (home-page
     "https://github.com/junkurihara/jscu/tree/master/packages/js-crypto-random#readme")
    (synopsis "Universal Module for Secure Random Generator in JavaScript")
    (description "Universal Module for Secure Random Generator in JavaScript")
    (license license:expat)))

(define-public node-js-encoding-utils-0.7.3
  (package
    (name "node-js-encoding-utils")
    (version "0.7.3")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/js-encoding-utils/-/js-encoding-utils-0.7.3.tgz")
       (sha256
        (base32 "06asrdhrwf0y9z35zbzcv9b0rhwswkzsm64id2pgwg871bhks19n"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@custom-elements-manifest/analyzer"
                                                  "@open-wc/testing"
                                                  "@types/chai"
                                                  "@types/mocha"
                                                  "@typescript-eslint/eslint-plugin"
                                                  "@typescript-eslint/parser"
                                                  "@web/test-runner"
                                                  "chai"
                                                  "eslint"
                                                  "mocha"
                                                  "nyc"
                                                  "ts-loader"
                                                  "ts-node"
                                                  "typescript"
                                                  "webpack"
                                                  "webpack-cli"
                                                  "can-npm-publish"))))))))
    (home-page "https://github.com/junkurihara/jseu#readme")
    (synopsis
     "Miscellaneous Encoding Utilities for Crypto-related Objects in JavaScript")
    (description
     "Miscellaneous Encoding Utilities for Crypto-related Objects in JavaScript")
    (license license:expat)))

(define-public node-js-xxhash-4.0.0
  (package
    (name "node-js-xxhash")
    (version "4.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/js-xxhash/-/js-xxhash-4.0.0.tgz")
       (sha256
        (base32 "13d70k955ydy7905is6vnan0w2b2hwzlrgd4kxwis37kk6swgmya"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@tsconfig/node18"
                                                  "@types/chai"
                                                  "@types/mocha"
                                                  "@types/node"
                                                  "@types/xxhashjs"
                                                  "@typescript-eslint/eslint-plugin"
                                                  "@typescript-eslint/parser"
                                                  "c8"
                                                  "chai"
                                                  "esbuild"
                                                  "eslint"
                                                  "eslint-config-prettier"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-prettier"
                                                  "eslint-plugin-promise"
                                                  "lorem-ipsum"
                                                  "mocha"
                                                  "perf-insight"
                                                  "prettier"
                                                  "ts-node"
                                                  "ts2mjs"
                                                  "typescript"
                                                  "xxhash-wasm"
                                                  "xxhashjs"))))))))
    (home-page "https://github.com/Jason3S/xxhash#readme")
    (synopsis "Pure JS implementation of xxhash")
    (description "Pure JS implementation of xxhash")
    (license license:expat)))

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

(define-public node-lodash-clonedeep-4.5.0
  (package
    (name "node-lodash-clonedeep")
    (version "4.5.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/lodash.clonedeep/-/lodash.clonedeep-4.5.0.tgz")
       (sha256
        (base32 "04h3zvxqwr3l6591q06vr87al81d5fbydz17pphp7jvgvkfk0dnd"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://lodash.com/")
    (synopsis "The lodash method `_.cloneDeep` exported as a module.")
    (description "The lodash method `_.cloneDeep` exported as a module.")
    (license license:expat)))

(define-public node-math-intrinsics-1.1.0
  (package
    (name "node-math-intrinsics")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/math-intrinsics/-/math-intrinsics-1.1.0.tgz")
       (sha256
        (base32 "19s3yi9ziz007ymq0r1k2xk1nrg2m5lc9kw8vy3c0ga9fmaw7hmq"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/for-each"
                                                  "@types/object-inspect"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "eclint"
                                                  "es-value-fixtures"
                                                  "eslint"
                                                  "evalmd"
                                                  "for-each"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "object-inspect"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (home-page "https://github.com/es-shims/math-intrinsics#readme")
    (synopsis "ES Math-related intrinsics and helpers, robustly cached.")
    (description "ES Math-related intrinsics and helpers, robustly cached.")
    (license license:expat)))

(define-public node-md5-2.3.0
  (package
    (name "node-md5")
    (version "2.3.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/md5/-/md5-2.3.0.tgz")
       (sha256
        (base32 "0apkyhn7yvh9nksjpfxy0ss7kdsn24xr7h5j5fjz6dkcd63wkwfw"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "webpack"))))))))
    (inputs (list node-is-buffer-1.1.6 node-charenc-0.0.2 node-crypt-0.0.2))
    (home-page "https://github.com/pvorb/node-md5#readme")
    (synopsis "js function for hashing messages with MD5")
    (description "js function for hashing messages with MD5")
    (license license:bsd-3)))

(define-public node-media-typer-1.1.0
  (package
    (name "node-media-typer")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/media-typer/-/media-typer-1.1.0.tgz")
       (sha256
        (base32 "1ghrgjcv59qna3h37himz6p7qsby9vki3gjrnv7r5z0y3lg57p5m"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (home-page "https://github.com/jshttp/media-typer#readme")
    (synopsis "Simple RFC 6838 media type parser and formatter")
    (description "Simple RFC 6838 media type parser and formatter")
    (license license:expat)))

(define-public node-merge-descriptors-1.0.3
  (package
    (name "node-merge-descriptors")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-1.0.3.tgz")
       (sha256
        (base32 "1bidz6yhi4a01y886wr89h5ggmw1jc416bsxj32b4rxwjdlf0dcf"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"))))))))
    (home-page "https://github.com/sindresorhus/merge-descriptors#readme")
    (synopsis "Merge objects using descriptors")
    (description "Merge objects using descriptors")
    (license license:expat)))

(define-public node-merge-descriptors-2.0.0
  (package
    (name "node-merge-descriptors")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/merge-descriptors/-/merge-descriptors-2.0.0.tgz")
       (sha256
        (base32 "1khx20ml70ll3k69qsq8p9ybz967mykrks8ak79m46f7bwm3525f"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("ava" "xo"))))))))
    (home-page "https://github.com/sindresorhus/merge-descriptors#readme")
    (synopsis "Merge objects using their property descriptors")
    (description "Merge objects using their property descriptors")
    (license license:expat)))

(define-public node-mime-db-1.54.0
  (package
    (name "node-mime-db")
    (version "1.54.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/mime-db/-/mime-db-1.54.0.tgz")
       (sha256
        (base32 "0864s7g498w1f95yvgq0ayqlgpb8x49jfb80qmcbvsnhcm70a89b"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "undici"
                                                  "csv-parse"
                                                  "media-typer"
                                                  "stream-to-array"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (home-page "https://github.com/jshttp/mime-db#readme")
    (synopsis "Media Type Database")
    (description "Media Type Database")
    (license license:expat)))

(define-public node-mime-types-3.0.1
  (package
    (name "node-mime-types")
    (version "3.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/mime-types/-/mime-types-3.0.1.tgz")
       (sha256
        (base32 "1mp2jh80l7xi3ghdrylibfa89cf5gd15vbspcrcfc2xmj8dcc9fv"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"))))))))
    (inputs (list node-mime-db-1.54.0))
    (home-page "https://github.com/jshttp/mime-types#readme")
    (synopsis "The ultimate javascript content-type utility.")
    (description "The ultimate javascript content-type utility.")
    (license license:expat)))

(define-public node-minimalistic-assert-1.0.1
  (package
    (name "node-minimalistic-assert")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/minimalistic-assert/-/minimalistic-assert-1.0.1.tgz")
       (sha256
        (base32 "187k0gdixs2zqkfvv6lm72w90c15rin2kx2zkyly7nyn8z4j4rgi"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/calvinmetcalf/minimalistic-assert")
    (synopsis "minimalistic-assert ===")
    (description "minimalistic-assert ===")
    (license license:isc)))

(define-public node-minimalistic-crypto-utils-1.0.1
  (package
    (name "node-minimalistic-crypto-utils")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/minimalistic-crypto-utils/-/minimalistic-crypto-utils-1.0.1.tgz")
       (sha256
        (base32 "1cwxzbk9zg7ha3pxcm4ghcy6j48jdpplisjgfvlddcp1xw16wpzk"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha"))))))))
    (home-page "https://github.com/indutny/minimalistic-crypto-utils#readme")
    (synopsis "Minimalistic tools for JS crypto modules")
    (description "Minimalistic tools for JS crypto modules")
    (license license:expat)))

(define-public node-negotiator-1.0.0
  (package
    (name "node-negotiator")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/negotiator/-/negotiator-1.0.0.tgz")
       (sha256
        (base32 "015w5p5p4sb02cd9zq20mp7l32jspq206p6d4g355b603ppdz8mm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha" "eslint"
                                                  "eslint-plugin-markdown"))))))))
    (home-page "https://github.com/jshttp/negotiator#readme")
    (synopsis "HTTP content negotiation")
    (description "HTTP content negotiation")
    (license license:expat)))

(define-public node-noble-hashes-1.8.0
  (package
    (name "node-noble-hashes")
    (version "1.8.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/@noble/hashes/-/hashes-1.8.0.tgz")
       (sha256
        (base32 "180fr2pfdlp10z79yqpf2bw9bccc0g2i2r3pm35sryh45kcnb9z8"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("prettier" "fast-check"
                                                  "typescript" "micro-bmark"
                                                  "micro-should"
                                                  "@paulmillr/jsbt"))))))))
    (home-page "https://paulmillr.com/noble/")
    (synopsis
     "Audited & minimal 0-dependency JS implementation of SHA, RIPEMD, BLAKE, HMAC, HKDF, PBKDF & Scrypt")
    (description
     "Audited & minimal 0-dependency JS implementation of SHA, RIPEMD, BLAKE, HMAC, HKDF, PBKDF & Scrypt")
    (license license:expat)))

(define-public node-node-cache-5.1.2
  (package
    (name "node-node-cache")
    (version "5.1.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/node-cache/-/node-cache-5.1.2.tgz")
       (sha256
        (base32 "0vr21lyjazlx0kisvv0ij6v370p9qv3sj1f0cw7rjb18pj4f56qf"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "grunt"
                                                  "mocha"
                                                  "should"
                                                  "coveralls"
                                                  "grunt-cli"
                                                  "grunt-run"
                                                  "typescript"
                                                  "@types/node"
                                                  "grunt-banner"
                                                  "coffee-script"
                                                  "coffee-coverage"
                                                  "grunt-mocha-cli"
                                                  "grunt-contrib-clean"
                                                  "grunt-contrib-watch"
                                                  "grunt-contrib-coffee"
                                                  "grunt-include-replace"))))))))
    (inputs (list node-clone-2.1.2))
    (home-page "https://github.com/node-cache/node-cache")
    (synopsis
     "Simple and fast NodeJS internal caching. Node internal in memory cache like memcached.")
    (description
     "Simple and fast NodeJS internal caching. Node internal in memory cache like memcached.")
    (license license:expat)))

(define-public node-node-forge-1.3.1
  (package
    (name "node-node-forge")
    (version "1.3.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/node-forge/-/node-forge-1.3.1.tgz")
       (sha256
        (base32 "11ddq9zg7gnrn2c1ml98j0p8ym0zbackwzm4rpdsy3yh1ir07pkp"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("browserify" "commander"
                                                  "cross-env"
                                                  "eslint"
                                                  "eslint-config-digitalbazaar"
                                                  "express"
                                                  "karma"
                                                  "karma-browserify"
                                                  "karma-chrome-launcher"
                                                  "karma-edge-launcher"
                                                  "karma-firefox-launcher"
                                                  "karma-ie-launcher"
                                                  "karma-mocha"
                                                  "karma-mocha-reporter"
                                                  "karma-safari-launcher"
                                                  "karma-sauce-launcher"
                                                  "karma-sourcemap-loader"
                                                  "karma-tap-reporter"
                                                  "karma-webpack"
                                                  "mocha"
                                                  "mocha-lcov-reporter"
                                                  "nodejs-websocket"
                                                  "nyc"
                                                  "opts"
                                                  "webpack"
                                                  "webpack-cli"
                                                  "worker-loader"))))))))
    (home-page "https://github.com/digitalbazaar/forge")
    (synopsis
     "JavaScript implementations of network transports, cryptography, ciphers, PKI, message digests, and various utilities.")
    (description
     "JavaScript implementations of network transports, cryptography, ciphers, PKI, message digests, and various utilities.")
    (license #f)))

(define-public node-node-gyp-build-4.8.4
  (package
    (name "node-node-gyp-build")
    (version "4.8.4")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/node-gyp-build/-/node-gyp-build-4.8.4.tgz")
       (sha256
        (base32 "095c5d6s3c5kc6f66nsqdamxg91qffk34r0mmqixrgaq87xm014l"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("array-shuffle" "standard"
                                                  "tape"))))))))
    (home-page "https://github.com/prebuild/node-gyp-build")
    (synopsis
     "Build tool and bindings loader for node-gyp that supports prebuilds")
    (description
     "Build tool and bindings loader for node-gyp that supports prebuilds")
    (license license:expat)))

(define-public node-object-inspect-1.13.4
  (package
    (name "node-object-inspect")
    (version "1.13.4")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/object-inspect/-/object-inspect-1.13.4.tgz")
       (sha256
        (base32 "1gwh5vk75w4crskqjsn4ps9z8hqqpjp58d8y82q4b2px79x9c943"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@ljharb/eslint-config"
                                                  "@pkgjs/support"
                                                  "auto-changelog"
                                                  "core-js"
                                                  "error-cause"
                                                  "es-value-fixtures"
                                                  "eslint"
                                                  "for-each"
                                                  "functions-have-names"
                                                  "glob"
                                                  "globalthis"
                                                  "has-symbols"
                                                  "has-tostringtag"
                                                  "in-publish"
                                                  "jackspeak"
                                                  "make-arrow-function"
                                                  "mock-property"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "safer-buffer"
                                                  "semver"
                                                  "string.prototype.repeat"
                                                  "tape"))))))))
    (home-page "https://github.com/inspect-js/object-inspect")
    (synopsis "string representations of objects in node and the browser")
    (description "string representations of objects in node and the browser")
    (license license:expat)))

(define-public node-on-exit-leak-free-2.1.2
  (package
    (name "node-on-exit-leak-free")
    (version "2.1.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/on-exit-leak-free/-/on-exit-leak-free-2.1.2.tgz")
       (sha256
        (base32 "1a51rmbfrq88icpj0mh2bm6i0nnivchfbsmpqyqhg24adby0rl8y"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("snazzy" "standard" "tap"))))))))
    (home-page "https://github.com/mcollina/on-exit-or-gc#readme")
    (synopsis
     "Execute a function on exit without leaking memory, allowing all objects to be garbage collected")
    (description
     "Execute a function on exit without leaking memory, allowing all objects to be garbage collected")
    (license license:expat)))

(define-public node-parseqs-0.0.6
  (package
    (name "node-parseqs")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/parseqs/-/parseqs-0.0.6.tgz")
       (sha256
        (base32 "1zmmwzk1ap33b72n694r2glahgjdxyacji0zh23ngpagxdxrr4dr"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "better-assert"))))))))
    (home-page "https://github.com/get/querystring")
    (synopsis
     "Provides methods for parsing a query string into an object, and vice versa.")
    (description
     "Provides methods for parsing a query string into an object, and vice versa.")
    (license license:expat)))

(define-public node-parseuri-0.0.6
  (package
    (name "node-parseuri")
    (version "0.0.6")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/parseuri/-/parseuri-0.0.6.tgz")
       (sha256
        (base32 "0q7a3kddwxs08x0rmv3anbvi5iixqnd1zfj247yqin9ygxwlbx6j"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("better-assert" "mocha"
                                                  "expect.js"))))))))
    (home-page "https://github.com/get/parseuri")
    (synopsis
     "Method that parses a URI and returns an array of its components")
    (description
     "Method that parses a URI and returns an array of its components")
    (license license:expat)))

(define-public node-path-to-regexp-0.1.12
  (package
    (name "node-path-to-regexp")
    (version "0.1.12")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-0.1.12.tgz")
       (sha256
        (base32 "1d2hdkry7lf7g1qjlh64r4h4159g7hy3afahja54ykcppkx1gzq3"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "istanbul"))))))))
    (home-page "https://github.com/pillarjs/path-to-regexp#readme")
    (synopsis "Express style path to RegExp utility")
    (description "Express style path to RegExp utility")
    (license license:expat)))

(define-public node-path-to-regexp-8.2.0
  (package
    (name "node-path-to-regexp")
    (version "8.2.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/path-to-regexp/-/path-to-regexp-8.2.0.tgz")
       (sha256
        (base32 "1p3rd79z594jzz4f5kmz7qmvmd0nacrkc1g8ap9iw253g2fcjbkm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("recheck" "size-limit"
                                                  "typescript"
                                                  "@types/node"
                                                  "@types/semver"
                                                  "@vitest/coverage-v8"
                                                  "@borderless/ts-scripts"
                                                  "@size-limit/preset-small-lib"))))))))
    (home-page "https://github.com/pillarjs/path-to-regexp#readme")
    (synopsis "Express style path to RegExp utility")
    (description "Express style path to RegExp utility")
    (license license:expat)))

(define-public node-picomatch-4.0.2
  (package
    (name "node-picomatch")
    (version "4.0.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/picomatch/-/picomatch-4.0.2.tgz")
       (sha256
        (base32 "19yffg7mbfhcg49qk0rsdak258gchbk33hh1j21ifjik3h5c5axv"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha" "eslint"
                                                  "fill-range" "time-require"
                                                  "gulp-format-md"))))))))
    (home-page "https://github.com/micromatch/picomatch")
    (synopsis
     "Blazing fast and accurate glob matcher written in JavaScript, with no dependencies and full support for standard and extended Bash glob features, including braces, extglobs, POSIX brackets, and regular expressions.")
    (description
     "Blazing fast and accurate glob matcher written in JavaScript, with no dependencies and full support for standard and extended Bash glob features, including braces, extglobs, POSIX brackets, and regular expressions.")
    (license license:expat)))

(define-public node-pino-9.7.0
  (package
    (name "node-pino")
    (version "9.7.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/pino/-/pino-9.7.0.tgz")
       (sha256
        (base32 "0ck8ab6h086xad1mcyrhyvrpysh3bia4rgx33awyzmfdy5asa5fp"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/flush-write-stream"
                                                  "@types/node"
                                                  "@types/tap"
                                                  "@yao-pkg/pkg"
                                                  "airtap"
                                                  "benchmark"
                                                  "bole"
                                                  "bunyan"
                                                  "debug"
                                                  "docsify-cli"
                                                  "eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-n"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "execa"
                                                  "fastbench"
                                                  "flush-write-stream"
                                                  "import-fresh"
                                                  "jest"
                                                  "log"
                                                  "loglevel"
                                                  "midnight-smoker"
                                                  "pino-pretty"
                                                  "pre-commit"
                                                  "proxyquire"
                                                  "pump"
                                                  "rimraf"
                                                  "semver"
                                                  "split2"
                                                  "steed"
                                                  "strip-ansi"
                                                  "tap"
                                                  "tape"
                                                  "through2"
                                                  "ts-node"
                                                  "tsd"
                                                  "typescript"
                                                  "winston"))))))))
    (inputs (list node-thread-stream-3.1.0
                  node-sonic-boom-4.2.0
                  node-safe-stable-stringify-2.5.0
                  node-real-require-0.2.0
                  node-quick-format-unescaped-4.0.4
                  node-process-warning-5.0.0
                  node-pino-std-serializers-7.0.0
                  node-pino-abstract-transport-2.0.0
                  node-on-exit-leak-free-2.1.2
                  node-fast-redact-3.5.0
                  node-atomic-sleep-1.0.0))
    (home-page "https://getpino.io")
    (synopsis "super fast, all natural json logger")
    (description "super fast, all natural json logger")
    (license license:expat)))

(define-public node-pino-abstract-transport-2.0.0
  (package
    (name "node-pino-abstract-transport")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/pino-abstract-transport/-/pino-abstract-transport-2.0.0.tgz")
       (sha256
        (base32 "170l8zb0qkb5mj5718r8llalzjq0bbwk46ldk0hqxvnbb6w23vgd"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/node" "husky"
                                                  "snazzy"
                                                  "standard"
                                                  "tap"
                                                  "thread-stream"
                                                  "tsd"))))))))
    (inputs (list node-split2-4.2.0))
    (home-page "https://github.com/pinojs/pino-abstract-transport#readme")
    (synopsis "Write Pino transports easily")
    (description "Write Pino transports easily")
    (license license:expat)))

(define-public node-pino-std-serializers-7.0.0
  (package
    (name "node-pino-std-serializers")
    (version "7.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/pino-std-serializers/-/pino-std-serializers-7.0.0.tgz")
       (sha256
        (base32 "0g78h5ca6wmyx81n11bqsjd7vh2x16pllabwblhlrzxpysw5zc65"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@matteo.collina/tspl"
                                                  "@types/node"
                                                  "borp"
                                                  "pre-commit"
                                                  "snazzy"
                                                  "standard"
                                                  "tsd"
                                                  "typescript"))))))))
    (home-page "https://github.com/pinojs/pino-std-serializers#readme")
    (synopsis "A collection of standard object serializers for Pino")
    (description "A collection of standard object serializers for Pino")
    (license license:expat)))

(define-public node-process-warning-5.0.0
  (package
    (name "node-process-warning")
    (version "5.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/process-warning/-/process-warning-5.0.0.tgz")
       (sha256
        (base32 "14kbzhw27z0klw8qgyzd998vipsff7sd50dlizmr6dcy8251h84j"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@fastify/pre-commit"
                                                  "benchmark"
                                                  "c8"
                                                  "eslint"
                                                  "jest"
                                                  "neostandard"
                                                  "tsd"))))))))
    (home-page "https://github.com/fastify/fastify-warning#readme")
    (synopsis "A small utility for creating warnings and emitting them.")
    (description "A small utility for creating warnings and emitting them.")
    (license license:expat)))

(define-public node-progress-stream-2.0.0
  (package
    (name "node-progress-stream")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/progress-stream/-/progress-stream-2.0.0.tgz")
       (sha256
        (base32 "0xzcaf46zzajvm24b9hlffgydjdnjs5k77ax56y5ynpj0qj0nllw"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("request" "single-line-log"
                                                  "numeral"))))))))
    (inputs (list node-through2-2.0.5 node-speedometer-1.0.0))
    (home-page "https://github.com/freeall/progress-stream#readme")
    (synopsis "Read the progress of a stream")
    (description "Read the progress of a stream")
    (license license:bsd-2)))

(define-public node-promise-retry-2.0.1
  (package
    (name "node-promise-retry")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/promise-retry/-/promise-retry-2.0.1.tgz")
       (sha256
        (base32 "1k2mdc2jbw2h3ykxcgvh2wv20gdb6m1siacllr7dy2x4rlk3g5jq"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("expect.js" "mocha"
                                                  "sleep-promise"))))))))
    (inputs (list node-retry-0.12.0 node-err-code-2.0.3))
    (home-page "https://github.com/IndigoUnited/node-promise-retry#readme")
    (synopsis
     "Retries a function that returns a promise, leveraging the power of the retry module.")
    (description
     "Retries a function that returns a promise, leveraging the power of the retry module.")
    (license license:expat)))

(define-public node-proxy-from-env-1.1.0
  (package
    (name "node-proxy-from-env")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/proxy-from-env/-/proxy-from-env-1.1.0.tgz")
       (sha256
        (base32 "03yy2xm903581x3vmklhp06dlxgipz10d4vhx69sqg2xy1a2824l"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("coveralls" "eslint"
                                                  "istanbul" "mocha"))))))))
    (home-page "https://github.com/Rob--W/proxy-from-env#readme")
    (synopsis
     "Offers getProxyForUrl to get the proxy URL for a URL, respecting the *_PROXY (e.g. HTTP_PROXY) and NO_PROXY environment variables.")
    (description
     "Offers getProxyForUrl to get the proxy URL for a URL, respecting the *_PROXY (e.g. HTTP_PROXY) and NO_PROXY environment variables.")
    (license license:expat)))

(define-public node-qs-6.13.0
  (package
    (name "node-qs")
    (version "6.13.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/qs/-/qs-6.13.0.tgz")
       (sha256
        (base32 "1z88srnvwfqdxvy5sixyc5zyfxpb9khjflnp3dn4d3nwvsxymzxb"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "glob"
                                                  "tape"
                                                  "eclint"
                                                  "eslint"
                                                  "evalmd"
                                                  "mkdirp"
                                                  "for-each"
                                                  "qs-iconv"
                                                  "jackspeak"
                                                  "npmignore"
                                                  "browserify"
                                                  "iconv-lite"
                                                  "in-publish"
                                                  "has-symbols"
                                                  "module-deps"
                                                  "unassertify"
                                                  "safer-buffer"
                                                  "mock-property"
                                                  "object-inspect"
                                                  "common-shakeify"
                                                  "bundle-collapser"
                                                  "es-value-fixtures"
                                                  "@browserify/envify"
                                                  "safe-publish-latest"
                                                  "has-override-mistake"
                                                  "@browserify/uglifyify"
                                                  "@ljharb/eslint-config"
                                                  "has-property-descriptors"))))))))
    (inputs (list node-side-channel-1.1.0))
    (home-page "https://github.com/ljharb/qs")
    (synopsis
     "A querystring parser that supports nesting and arrays, with a depth limit")
    (description
     "A querystring parser that supports nesting and arrays, with a depth limit")
    (license license:bsd-3)))

(define-public node-qs-6.14.0
  (package
    (name "node-qs")
    (version "6.14.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/qs/-/qs-6.14.0.tgz")
       (sha256
        (base32 "16saymrsxrwvjbilw5hm313g06a0qfjl497wgm2xhc99wbg4121h"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@browserify/envify"
                                                  "@browserify/uglifyify"
                                                  "@ljharb/eslint-config"
                                                  "browserify"
                                                  "bundle-collapser"
                                                  "common-shakeify"
                                                  "eclint"
                                                  "es-value-fixtures"
                                                  "eslint"
                                                  "evalmd"
                                                  "for-each"
                                                  "glob"
                                                  "has-bigints"
                                                  "has-override-mistake"
                                                  "has-property-descriptors"
                                                  "has-proto"
                                                  "has-symbols"
                                                  "iconv-lite"
                                                  "in-publish"
                                                  "jackspeak"
                                                  "mkdirp"
                                                  "mock-property"
                                                  "module-deps"
                                                  "npmignore"
                                                  "nyc"
                                                  "object-inspect"
                                                  "qs-iconv"
                                                  "safe-publish-latest"
                                                  "safer-buffer"
                                                  "tape"
                                                  "unassertify"))))))))
    (inputs (list node-side-channel-1.1.0))
    (home-page "https://github.com/ljharb/qs")
    (synopsis
     "A querystring parser that supports nesting and arrays, with a depth limit")
    (description
     "A querystring parser that supports nesting and arrays, with a depth limit")
    (license license:bsd-3)))

(define-public node-quick-format-unescaped-4.0.4
  (package
    (name "node-quick-format-unescaped")
    (version "4.0.4")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/quick-format-unescaped/-/quick-format-unescaped-4.0.4.tgz")
       (sha256
        (base32 "11d467a80crd628i4l815xvnchw4sjm97dhi13xxvzw7apn59fmc"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("fastbench" "nyc"))))))))
    (home-page "https://github.com/davidmarkclements/quick-format#readme")
    (synopsis "Solves a problem with util.format")
    (description "Solves a problem with util.format")
    (license license:expat)))

(define-public node-raw-body-2.5.2
  (package
    (name "node-raw-body")
    (version "2.5.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/raw-body/-/raw-body-2.5.2.tgz")
       (sha256
        (base32 "0by4zfp9mahjnr3rbnjqrr1a4rgg4jasr7dwvkbbfxcz8b469la2"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "bluebird"
                                                  "safe-buffer"
                                                  "readable-stream"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-http-errors-2.0.0 node-iconv-lite-0.4.24
                  node-unpipe-1.0.0 node-bytes-3.1.2))
    (home-page "https://github.com/stream-utils/raw-body#readme")
    (synopsis "Get and validate the raw body of a readable stream.")
    (description "Get and validate the raw body of a readable stream.")
    (license license:expat)))

(define-public node-raw-body-3.0.0
  (package
    (name "node-raw-body")
    (version "3.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/raw-body/-/raw-body-3.0.0.tgz")
       (sha256
        (base32 "0qa5vynb44l1f7cx7prjdkywk71izyjmhjlr6rqpsa7wk37wdar7"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("bluebird" "eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"
                                                  "readable-stream"
                                                  "safe-buffer"))))))))
    (inputs (list node-unpipe-1.0.0 node-iconv-lite-0.6.3
                  node-http-errors-2.0.0 node-bytes-3.1.2))
    (home-page "https://github.com/stream-utils/raw-body#readme")
    (synopsis "Get and validate the raw body of a readable stream.")
    (description "Get and validate the raw body of a readable stream.")
    (license license:expat)))

(define-public node-real-require-0.2.0
  (package
    (name "node-real-require")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/real-require/-/real-require-0.2.0.tgz")
       (sha256
        (base32 "15izqxalakrfnnlkdk9gpghl89hh5q03bjcir9fckkjb5r36va1a"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "c8"
                                                  "prettier"
                                                  "tap"))))))))
    (home-page "https://github.com/pinojs/real-require")
    (synopsis
     "Keep require and import consistent after bundling or transpiling")
    (description
     "Keep require and import consistent after bundling or transpiling")
    (license license:expat)))

(define-public node-retry-0.12.0
  (package
    (name "node-retry")
    (version "0.12.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/retry/-/retry-0.12.0.tgz")
       (sha256
        (base32 "0a5l61f1aqn124j25m2q6m0j60mv7d9h74a8gfqnmp5ajz8wcqfz"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("fake" "istanbul" "tape"))))))))
    (home-page "https://github.com/tim-kos/node-retry")
    (synopsis
     "Abstraction for exponential and custom retry strategies for failed operations.")
    (description
     "Abstraction for exponential and custom retry strategies for failed operations.")
    (license license:expat)))
(define-public node-rotating-file-stream-3.2.6
  (package
    (name "node-rotating-file-stream")
    (version "3.2.6")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/rotating-file-stream/-/rotating-file-stream-3.2.6.tgz")
       (sha256
        (base32 "1q87rjfbaazli4x1ljdq2ijxbalisfwl5c30r9x65ba3lgzc2w7i"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/jest" "@types/node"
                                                  "@typescript-eslint/eslint-plugin"
                                                  "@typescript-eslint/parser"
                                                  "eslint"
                                                  "eslint-plugin-sort-keys"
                                                  "jest"
                                                  "jest-environment-node-single-context"
                                                  "prettier"
                                                  "ts-jest"
                                                  "tsx"
                                                  "typescript"))))))))
    (home-page "https://github.com/iccicci/rotating-file-stream#readme")
    (synopsis
     "Opens a stream.Writable to a file rotated by interval and/or size. A logrotate alternative.")
    (description
     "Opens a stream.Writable to a file rotated by interval and/or size. A logrotate alternative.")
    (license license:expat)))

(define-public node-router-2.2.0
  (package
    (name "node-router")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/router/-/router-2.2.0.tgz")
       (sha256
        (base32 "0qclnvx6zzlrqj03wz8lyh9rzwickiz8c7czm3vig5csncvsyi5i"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("finalhandler" "mocha" "nyc"
                                                  "run-series" "standard"
                                                  "supertest"))))))))
    (inputs (list node-path-to-regexp-8.2.0 node-parseurl-1.3.3
                  node-is-promise-4.0.0 node-depd-2.0.0 node-debug-4.4.1))
    (home-page "https://github.com/pillarjs/router#readme")
    (synopsis "Simple middleware-style router")
    (description "Simple middleware-style router")
    (license license:expat)))

(define-public node-safe-stable-stringify-2.5.0
  (package
    (name "node-safe-stable-stringify")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/safe-stable-stringify/-/safe-stable-stringify-2.5.0.tgz")
       (sha256
        (base32 "149y0w1bdsilr3hqzngckvc7bqchvnk43bly8zcvzw75z3hb9xdc"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/json-stable-stringify"
                                                  "@types/node"
                                                  "benchmark"
                                                  "clone"
                                                  "fast-json-stable-stringify"
                                                  "fast-safe-stringify"
                                                  "fast-stable-stringify"
                                                  "faster-stable-stringify"
                                                  "fastest-stable-stringify"
                                                  "json-stable-stringify"
                                                  "json-stringify-deterministic"
                                                  "json-stringify-safe"
                                                  "standard"
                                                  "tap"
                                                  "typescript"))))))))
    (home-page "https://github.com/BridgeAR/safe-stable-stringify#readme")
    (synopsis
     "Deterministic and safely JSON.stringify to quickly serialize JavaScript objects")
    (description
     "Deterministic and safely JSON.stringify to quickly serialize JavaScript objects")
    (license license:expat)))

(define-public node-sax-1.4.1
  (package
    (name "node-sax")
    (version "1.4.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/sax/-/sax-1.4.1.tgz")
       (sha256
        (base32 "02ckxnr7vw760ja15bzilzggsw5yh70b2p9ppc8f1xnhbmc8nxff"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tap"))))))))
    (home-page "https://github.com/isaacs/sax-js#readme")
    (synopsis "An evented streaming XML parser in JavaScript")
    (description "An evented streaming XML parser in JavaScript")
    (license license:isc)))

(define-public node-selfsigned-2.4.1
  (package
    (name "node-selfsigned")
    (version "2.4.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/selfsigned/-/selfsigned-2.4.1.tgz")
       (sha256
        (base32 "0j0ycglnv8kqjavizgk8c4xc0gpmnr04vdwx8zb4ngf12lcw4ypk"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("chai" "mocha"))))))))
    (inputs (list node-node-forge-1.3.1 node-types-node-forge-1.3.11))
    (home-page "https://github.com/jfromaniello/selfsigned#readme")
    (synopsis "Generate self signed certificates private and public keys")
    (description "Generate self signed certificates private and public keys")
    (license license:expat)))

(define-public node-send-0.19.0
  (package
    (name "node-send")
    (version "0.19.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/send/-/send-0.19.0.tgz")
       (sha256
        (base32 "0rhbd0z9rx7wmxbqy3d9yjavzaqbs7nb2dh68z5g4dbphw9i41wa"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "after"
                                                  "mocha"
                                                  "eslint"
                                                  "supertest"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-range-parser-1.2.1
                  node-on-finished-2.4.1
                  node-http-errors-2.0.0
                  node-escape-html-1.0.3
                  node-encodeurl-1.0.2
                  node-statuses-2.0.1
                  node-destroy-1.2.0
                  node-fresh-0.5.2
                  node-debug-2.6.9
                  node-mime-1.6.0
                  node-etag-1.8.1
                  node-depd-2.0.0
                  node-ms-2.1.3))
    (home-page "https://github.com/pillarjs/send#readme")
    (synopsis
     "Better streaming static file server with Range and conditional-GET support")
    (description
     "Better streaming static file server with Range and conditional-GET support")
    (license license:expat)))

(define-public node-send-1.2.0
  (package
    (name "node-send")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/send/-/send-1.2.0.tgz")
       (sha256
        (base32 "177y3wdhqivc7lqmw10z0w299264dlv5cnff76lvw8vlqb7qj2w9"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("after" "eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"
                                                  "supertest"))))))))
    (inputs (list node-statuses-2.0.2
                  node-range-parser-1.2.1
                  node-on-finished-2.4.1
                  node-ms-2.1.3
                  node-mime-types-3.0.1
                  node-http-errors-2.0.0
                  node-fresh-2.0.0
                  node-etag-1.8.1
                  node-escape-html-1.0.3
                  node-encodeurl-2.0.0
                  node-debug-4.4.1))
    (home-page "https://github.com/pillarjs/send#readme")
    (synopsis
     "Better streaming static file server with Range and conditional-GET support")
    (description
     "Better streaming static file server with Range and conditional-GET support")
    (license license:expat)))

(define-public node-serve-static-1.16.2
  (package
    (name "node-serve-static")
    (version "1.16.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/serve-static/-/serve-static-1.16.2.tgz")
       (sha256
        (base32 "12gkhivxasrhzchvzpk4qwv1j7mlgz2qv1gz974n6mld5cii7f45"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "supertest"
                                                  "safe-buffer"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-promise"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-escape-html-1.0.3 node-encodeurl-2.0.0
                  node-parseurl-1.3.3 node-send-0.19.0))
    (home-page "https://github.com/expressjs/serve-static#readme")
    (synopsis "Serve static files")
    (description "Serve static files")
    (license license:expat)))

(define-public node-serve-static-2.2.0
  (package
    (name "node-serve-static")
    (version "2.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/serve-static/-/serve-static-2.2.0.tgz")
       (sha256
        (base32 "10mlmm9lrw8ijrbznizysa5phgyijwcgsis5mrvqsphd2k8dbr5w"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"
                                                  "supertest"))))))))
    (inputs (list node-send-1.2.0 node-parseurl-1.3.3 node-escape-html-1.0.3
                  node-encodeurl-2.0.0))
    (home-page "https://github.com/expressjs/serve-static#readme")
    (synopsis "Serve static files")
    (description "Serve static files")
    (license license:expat)))

(define-public node-sha3-2.1.4
  (package
    (name "node-sha3")
    (version "2.1.4")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/sha3/-/sha3-2.1.4.tgz")
       (sha256
        (base32 "0ywwrglc9pwh39jb6k4rp221iy48p8qflcgn8f8k71za8hn3ww5a"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@babel/cli" "@babel/core"
                                                  "@babel/preset-env"
                                                  "@babel/register"
                                                  "@types/node"
                                                  "babel-eslint"
                                                  "eslint"
                                                  "eslint-plugin-ante"
                                                  "mocha"
                                                  "nyc"))))))))
    (inputs (list node-buffer-6.0.3))
    (home-page "https://www.npmjs.com/package/node-sha3")
    (synopsis "The Keccak family of hashing algorithms.")
    (description "The Keccak family of hashing algorithms.")
    (license license:expat)))

(define-public node-side-channel-1.1.0
  (package
    (name "node-side-channel")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/side-channel/-/side-channel-1.1.0.tgz")
       (sha256
        (base32 "11d40rvhvkj4r1dis1vmzi0gc6qnvw90jkc2ppz2w90bk5xyg4w4"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/object-inspect"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "eclint"
                                                  "encoding"
                                                  "eslint"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-side-channel-weakmap-1.0.2 node-side-channel-map-1.0.1
                  node-side-channel-list-1.0.0 node-object-inspect-1.13.4
                  node-es-errors-1.3.0))
    (home-page "https://github.com/ljharb/side-channel#readme")
    (synopsis
     "Store information about any JS value in a side channel. Uses WeakMap if available.")
    (description
     "Store information about any JS value in a side channel. Uses WeakMap if available.")
    (license license:expat)))

(define-public node-side-channel-list-1.0.0
  (package
    (name "node-side-channel-list")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/side-channel-list/-/side-channel-list-1.0.0.tgz")
       (sha256
        (base32 "1k8wgnr29504nxwmh9p5d88462zdvc2y9nswjjlsrj7bqaq4w1sq"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/object-inspect"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "eclint"
                                                  "encoding"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-object-inspect-1.13.4 node-es-errors-1.3.0))
    (home-page "https://github.com/ljharb/side-channel-list#readme")
    (synopsis
     "Store information about any JS value in a side channel, using a linked list")
    (description
     "Store information about any JS value in a side channel, using a linked list")
    (license license:expat)))

(define-public node-side-channel-map-1.0.1
  (package
    (name "node-side-channel-map")
    (version "1.0.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/side-channel-map/-/side-channel-map-1.0.1.tgz")
       (sha256
        (base32 "1mhnf4m2zdv1ikvjk74v6d7fhr2bzn41a6w95nbcq2rh45j6n99v"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/get-intrinsic"
                                                  "@types/object-inspect"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "eclint"
                                                  "encoding"
                                                  "eslint"
                                                  "evalmd"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-object-inspect-1.13.4 node-get-intrinsic-1.3.0
                  node-es-errors-1.3.0 node-call-bound-1.0.4))
    (home-page "https://github.com/ljharb/side-channel-map#readme")
    (synopsis
     "Store information about any JS value in a side channel, using a Map")
    (description
     "Store information about any JS value in a side channel, using a Map")
    (license license:expat)))

(define-public node-side-channel-weakmap-1.0.2
  (package
    (name "node-side-channel-weakmap")
    (version "1.0.2")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/side-channel-weakmap/-/side-channel-weakmap-1.0.2.tgz")
       (sha256
        (base32 "0vnhs2whvv59nkqdsfpmd1fwrcjzh2ka5z8giy68kbg7qpq58aiv"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@arethetypeswrong/cli"
                                                  "@ljharb/eslint-config"
                                                  "@ljharb/tsconfig"
                                                  "@types/call-bind"
                                                  "@types/get-intrinsic"
                                                  "@types/object-inspect"
                                                  "@types/tape"
                                                  "auto-changelog"
                                                  "eclint"
                                                  "encoding"
                                                  "eslint"
                                                  "in-publish"
                                                  "npmignore"
                                                  "nyc"
                                                  "safe-publish-latest"
                                                  "tape"
                                                  "typescript"))))))))
    (inputs (list node-side-channel-map-1.0.1 node-object-inspect-1.13.4
                  node-get-intrinsic-1.3.0 node-es-errors-1.3.0
                  node-call-bound-1.0.4))
    (home-page "https://github.com/ljharb/side-channel-weakmap#readme")
    (synopsis
     "Store information about any JS value in a side channel. Uses WeakMap if available.")
    (description
     "Store information about any JS value in a side channel. Uses WeakMap if available.")
    (license license:expat)))

(define-public node-signal-exit-4.1.0
  (package
    (name "node-signal-exit")
    (version "4.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/signal-exit/-/signal-exit-4.1.0.tgz")
       (sha256
        (base32 "15dpm2y84hd7ybqy89raj6xza56dfj92i1vkad0sdxpc26l5hfwx"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/cross-spawn"
                                                  "@types/node"
                                                  "@types/signal-exit"
                                                  "@types/tap"
                                                  "c8"
                                                  "prettier"
                                                  "tap"
                                                  "ts-node"
                                                  "typedoc"
                                                  "typescript"))))))))
    (home-page "https://github.com/tapjs/signal-exit#readme")
    (synopsis "when you want to fire an event no matter how a process exits.")
    (description
     "when you want to fire an event no matter how a process exits.")
    (license license:isc)))

(define-public node-socket-io-client-2.5.0
  (package
    (name "node-socket-io-client")
    (version "2.5.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/socket.io-client/-/socket.io-client-2.5.0.tgz")
       (sha256
        (base32 "1isq55scga65z1c7krr0xzifyys95vyhb500q3fcz2krwddqa3r1"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("gulp" "zuul"
                                                  "mocha"
                                                  "has-cors"
                                                  "istanbul"
                                                  "derequire"
                                                  "expect.js"
                                                  "gulp-file"
                                                  "socket.io"
                                                  "babel-core"
                                                  "gulp-mocha"
                                                  "zuul-ngrok"
                                                  "gulp-eslint"
                                                  "babel-eslint"
                                                  "babel-loader"
                                                  "strip-loader"
                                                  "concat-stream"
                                                  "gulp-istanbul"
                                                  "webpack-merge"
                                                  "imports-loader"
                                                  "webpack-stream"
                                                  "gulp-task-listing"
                                                  "text-blob-builder"
                                                  "base64-arraybuffer"
                                                  "socket.io-browsers"
                                                  "babel-preset-es2015"
                                                  "zuul-builder-webpack"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-standard"))))))))
    (inputs (list node-component-emitter-1.3.1
                  node-socket-io-parser-3.3.4
                  node-engine-io-client-3.5.4
                  node-component-bind-1.0.0
                  node-has-binary2-1.0.3
                  node-to-array-0.1.4
                  node-parseuri-0.0.6
                  node-parseqs-0.0.6
                  node-indexof-0.0.1
                  node-backo2-1.0.2
                  node-debug-3.1.0))
    (home-page "https://github.com/Automattic/socket.io-client#readme")
    (synopsis
     "[![Build Status](https://github.com/socketio/socket.io-client/workflows/CI/badge.svg)](https://github.com/socketio/socket.io-client/actions) [![Dependency Status](https://david-dm.org/socketio/socket.io-client.svg)](https://david-dm.org/socketio/socket.io")
    (description
     "[![Build Status](https://github.com/socketio/socket.io-client/workflows/CI/badge.svg)](https://github.com/socketio/socket.io-client/actions) [![Dependency Status](https://david-dm.org/socketio/socket.io-client.svg)](https://david-dm.org/socketio/socket.io")
    (license license:expat)))

(define-public node-socket-io-parser-3.3.4
  (package
    (name "node-socket-io-parser")
    (version "3.3.4")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/socket.io-parser/-/socket.io-parser-3.3.4.tgz")
       (sha256
        (base32 "0bzggyhnkd9y99qkpk1gh3163jj0m44m3ywbbzbch9k05ssl2fwa"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("benchmark" "expect.js"
                                                  "mocha" "socket.io-browsers"
                                                  "zuul" "zuul-ngrok"))))))))
    (inputs (list node-isarray-2.0.1 node-debug-3.1.0
                  node-component-emitter-1.3.1))
    (home-page "https://github.com/Automattic/socket.io-parser#readme")
    (synopsis "socket.io protocol parser")
    (description "socket.io protocol parser")
    (license license:expat)))

(define-public node-sonic-boom-4.2.0
  (package
    (name "node-sonic-boom")
    (version "4.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/sonic-boom/-/sonic-boom-4.2.0.tgz")
       (sha256
        (base32 "17rg6c7gvmga4b1iqqv2qivmijgxz6jqnvrdhrdvs4lgdbkm7d4j"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@fastify/pre-commit"
                                                  "@sinonjs/fake-timers"
                                                  "@types/node"
                                                  "fastbench"
                                                  "proxyquire"
                                                  "standard"
                                                  "tap"
                                                  "tsd"
                                                  "typescript"))))))))
    (inputs (list node-atomic-sleep-1.0.0))
    (home-page "https://github.com/pinojs/sonic-boom#readme")
    (synopsis "Extremely fast utf8 only stream implementation")
    (description "Extremely fast utf8 only stream implementation")
    (license license:expat)))

(define-public node-speedometer-1.0.0
  (package
    (name "node-speedometer")
    (version "1.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/speedometer/-/speedometer-1.0.0.tgz")
       (sha256
        (base32 "0dzykz7l6xg6h13h9w9xw46ix8kk6245ig3sqagn18gn8spx7mvy"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/mafintosh/speedometer")
    (synopsis "simple speed measurement in javascript")
    (description "simple speed measurement in javascript")
    (license license:expat)))

(define-public node-split2-4.2.0
  (package
    (name "node-split2")
    (version "4.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/split2/-/split2-4.2.0.tgz")
       (sha256
        (base32 "0m5z4zgfpwh4b65a457m3ymr4zbm35kbdbx8rmnzzi9g0iziw1p0"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("binary-split"
                                                  "callback-stream"
                                                  "fastbench"
                                                  "nyc"
                                                  "pre-commit"
                                                  "standard"
                                                  "tape"))))))))
    (home-page "https://github.com/mcollina/split2#readme")
    (synopsis "split a Text Stream into a Line Stream, using Stream 3")
    (description "split a Text Stream into a Line Stream, using Stream 3")
    (license license:isc)))

(define-public node-statuses-2.0.2
  (package
    (name "node-statuses")
    (version "2.0.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/statuses/-/statuses-2.0.2.tgz")
       (sha256
        (base32 "1q4zjhjprvhdjc32px6b4b0i3ffn1mbqygp7yilbb204f4j0m06a"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("csv-parse" "eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"
                                                  "raw-body"
                                                  "stream-to-array"))))))))
    (home-page "https://github.com/jshttp/statuses#readme")
    (synopsis "HTTP status utility")
    (description "HTTP status utility")
    (license license:expat)))

(define-public node-striptags-3.2.0
  (package
    (name "node-striptags")
    (version "3.2.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/striptags/-/striptags-3.2.0.tgz")
       (sha256
        (base32 "1v1407gq87165wj53aayz060sn6nrjk90280v6x835cjz2f439cm"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("mocha" "istanbul"))))))))
    (home-page "https://github.com/ericnorris/striptags")
    (synopsis "PHP strip_tags in Node.js")
    (description "PHP strip_tags in Node.js")
    (license license:expat)))

(define-public node-sudo-prompt-9.2.1
  (package
    (name "node-sudo-prompt")
    (version "9.2.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/sudo-prompt/-/sudo-prompt-9.2.1.tgz")
       (sha256
        (base32 "1s5w0idb0lqc04c13fvg988qjw87bq0rq0m4pscryfn2k6bj0vpd"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/jorangreef/sudo-prompt#readme")
    (synopsis
     "Run a command using sudo, prompting the user with an OS dialog if necessary")
    (description
     "Run a command using sudo, prompting the user with an OS dialog if necessary")
    (license license:expat)))

(define-public node-thread-stream-3.1.0
  (package
    (name "node-thread-stream")
    (version "3.1.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/thread-stream/-/thread-stream-3.1.0.tgz")
       (sha256
        (base32 "0k84pfz1zqacdav2db1ikzs00ybw2nj5p6rmk3mpy9bn7f5l0brc"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/node" "@types/tap"
                                                  "@yao-pkg/pkg"
                                                  "desm"
                                                  "fastbench"
                                                  "pino-elasticsearch"
                                                  "sonic-boom"
                                                  "standard"
                                                  "tap"
                                                  "ts-node"
                                                  "typescript"
                                                  "why-is-node-running"))))))))
    (inputs (list node-real-require-0.2.0
                  node-husky-9.1.7))
    (home-page "https://github.com/mcollina/thread-stream#readme")
    (synopsis "A streaming way to send data to a Node.js Worker Thread")
    (description "A streaming way to send data to a Node.js Worker Thread")
    (license license:expat)))

(define-public node-through2-2.0.5
  (package
    (name "node-through2")
    (version "2.0.5")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/through2/-/through2-2.0.5.tgz")
       (sha256
        (base32 "1ff3m5b2lzy7v69dq1ab2wxpp38m6dw5yziqp7mp2spxmx7hg9wx"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("bl" "faucet" "nyc"
                                                  "safe-buffer"
                                                  "stream-spigot" "tape"))))))))
    (inputs (list node-xtend-4.0.2 node-readable-stream-2.3.8))
    (home-page "https://github.com/rvagg/through2#readme")
    (synopsis
     "A tiny wrapper around Node streams2 Transform to avoid explicit subclassing noise")
    (description
     "A tiny wrapper around Node streams2 Transform to avoid explicit subclassing noise")
    (license license:expat)))

(define-public node-to-array-0.1.4
  (package
    (name "node-to-array")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/to-array/-/to-array-0.1.4.tgz")
       (sha256
        (base32 "19gk4j88bmy3dy1q0h6iz275dd9bns76nz3isa2gmcjmg8p9gijd"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tap"))))))))
    (home-page "https://github.com/Raynos/to-array")
    (synopsis "Turn an array like into an array")
    (description "Turn an array like into an array")
    (license #f)))

(define-public node-type-is-2.0.1
  (package
    (name "node-type-is")
    (version "2.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/type-is/-/type-is-2.0.1.tgz")
       (sha256
        (base32 "1pbm95wdl9hmm93gmbdxyn00887l4r7jhia6dzgl99d89sx2kgqq"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("eslint"
                                                  "eslint-config-standard"
                                                  "eslint-plugin-import"
                                                  "eslint-plugin-markdown"
                                                  "eslint-plugin-node"
                                                  "eslint-plugin-promise"
                                                  "eslint-plugin-standard"
                                                  "mocha"
                                                  "nyc"))))))))
    (inputs (list node-mime-types-3.0.1 node-media-typer-1.1.0
                  node-content-type-1.0.5))
    (home-page "https://github.com/jshttp/type-is#readme")
    (synopsis "Infer the content-type of a request.")
    (description "Infer the content-type of a request.")
    (license license:expat)))

(define-public node-types-node-24.0.0
  (package
    (name "node-types-node")
    (version "24.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/@types/node/-/node-24.0.0.tgz")
       (sha256
        (base32 "15lmx23plqg0x2lv1az5rmjzkqql0xyv2nnk0f98qacs19r0mz95"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (inputs (list node-undici-types-7.8.0))
    (home-page
     "https://github.com/DefinitelyTyped/DefinitelyTyped/tree/master/types/node")
    (synopsis "TypeScript definitions for node")
    (description "TypeScript definitions for node")
    (license license:expat)))

(define-public node-types-node-forge-1.3.11
  (package
    (name "node-types-node-forge")
    (version "1.3.11")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/@types/node-forge/-/node-forge-1.3.11.tgz")
       (sha256
        (base32 "0jzh47r7nh07x2a1rjk25d64pgavgvp7nfhy1s8pxcmp9ib2axkz"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (inputs (list node-types-node-24.0.0))
    (home-page
     "https://github.com/DefinitelyTyped/DefinitelyTyped/tree/master/types/node-forge")
    (synopsis "TypeScript definitions for node-forge")
    (description "TypeScript definitions for node-forge")
    (license license:expat)))

(define-public node-undici-types-7.8.0
  (package
    (name "node-undici-types")
    (version "7.8.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/undici-types/-/undici-types-7.8.0.tgz")
       (sha256
        (base32 "12kd5qgxghla9qhm35470q56slp93lxysp6rf58c1hfxbvygsjwn"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://undici.nodejs.org")
    (synopsis "A stand-alone types package for Undici")
    (description "A stand-alone types package for Undici")
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
(define-public node-uuid-10.0.0
  (package
    (name "node-uuid")
    (version "10.0.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/uuid/-/uuid-10.0.0.tgz")
       (sha256
        (base32 "1cal7dpwmpldivwn8rwcqs2vvk5ji1pvqqpyn5ryna1scn5k3byp"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("jest" "husky"
                                                  "runmd"
                                                  "eslint"
                                                  "globals"
                                                  "prettier"
                                                  "@wdio/cli"
                                                  "@babel/cli"
                                                  "@babel/core"
                                                  "bundlewatch"
                                                  "lint-staged"
                                                  "neostandard"
                                                  "npm-run-all"
                                                  "random-seed"
                                                  "@commitlint/cli"
                                                  "standard-version"
                                                  "@babel/preset-env"
                                                  "@wdio/local-runner"
                                                  "@wdio/spec-reporter"
                                                  "@babel/eslint-parser"
                                                  "eslint-plugin-prettier"
                                                  "@wdio/jasmine-framework"
                                                  "optional-dev-dependency"
                                                  "@wdio/browserstack-service"
                                                  "@wdio/static-server-service"
                                                  "@commitlint/config-conventional"
                                                  "@babel/plugin-syntax-import-attributes"))))))))
    (home-page "https://github.com/uuidjs/uuid#readme")
    (synopsis "RFC9562 UUIDs")
    (description "RFC9562 UUIDs")
    (license license:expat)))

(define-public node-uuid-11.1.0
  (package
    (name "node-uuid")
    (version "11.1.0")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/uuid/-/uuid-11.1.0.tgz")
       (sha256
        (base32 "1iqx9a8p2ns0964h8mqcnqq0y7lzslxlangjfal4km6mc6k1687c"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@babel/eslint-parser"
                                                  "@commitlint/cli"
                                                  "@commitlint/config-conventional"
                                                  "@eslint/js"
                                                  "@types/eslint__js"
                                                  "bundlewatch"
                                                  "commander"
                                                  "eslint"
                                                  "eslint-config-prettier"
                                                  "eslint-plugin-prettier"
                                                  "globals"
                                                  "husky"
                                                  "jest"
                                                  "lint-staged"
                                                  "neostandard"
                                                  "npm-run-all"
                                                  "prettier"
                                                  "release-please"
                                                  "runmd"
                                                  "standard-version"
                                                  "typescript"
                                                  "typescript-eslint"))))))))
    (home-page "https://github.com/uuidjs/uuid#readme")
    (synopsis "RFC9562 UUIDs")
    (description "RFC9562 UUIDs")
    (license license:expat)))

(define-public node-vscode-sudo-prompt-9.3.1
  (package
    (name "node-vscode-sudo-prompt")
    (version "9.3.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/@vscode/sudo-prompt/-/sudo-prompt-9.3.1.tgz")
       (sha256
        (base32 "02g1jxc4l6j5a3hz93jr4m3jg9rm57mifqhhm4dg57rvzgq945qj"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/bpasero/sudo-prompt#readme")
    (synopsis
     "Run a command using sudo, prompting the user with an OS dialog if necessary")
    (description
     "Run a command using sudo, prompting the user with an OS dialog if necessary")
    (license license:expat)))

(define-public node-write-file-atomic-5.0.1
  (package
    (name "node-write-file-atomic")
    (version "5.0.1")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/write-file-atomic/-/write-file-atomic-5.0.1.tgz")
       (sha256
        (base32 "1q9v8bj7f1cld7la69sa6vc2b3xbkh29wxpzwnyw8v4s1zqbyc26"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tap" "@npmcli/template-oss"
                                                  "@npmcli/eslint-config"))))))))
    (inputs (list node-signal-exit-4.1.0 node-imurmurhash-0.1.4))
    (home-page "https://github.com/npm/write-file-atomic")
    (synopsis "Write files in an atomic fashion w/configurable ownership")
    (description "Write files in an atomic fashion w/configurable ownership")
    (license license:isc)))

(define-public node-write-file-atomic-6.0.0
  (package
    (name "node-write-file-atomic")
    (version "6.0.0")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/write-file-atomic/-/write-file-atomic-6.0.0.tgz")
       (sha256
        (base32 "03zhw5xzahlncqrhjxhrpyzzwa6qgilmda34z99sxi8is55rnhqv"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tap" "@npmcli/template-oss"
                                                  "@npmcli/eslint-config"))))))))
    (inputs (list node-signal-exit-4.1.0 node-imurmurhash-0.1.4))
    (home-page "https://github.com/npm/write-file-atomic")
    (synopsis "Write files in an atomic fashion w/configurable ownership")
    (description "Write files in an atomic fashion w/configurable ownership")
    (license license:isc)))
(define-public node-ws-7.5.10
  (package
    (name "node-ws")
    (version "7.5.10")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/ws/-/ws-7.5.10.tgz")
       (sha256
        (base32 "0bfsf9vaw54mlx5fv4lizrj6mibyf7gwhm5mxkrfknl946n0wilp"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "mocha"
                                                  "eslint"
                                                  "prettier"
                                                  "benchmark"
                                                  "bufferutil"
                                                  "utf-8-validate"
                                                  "eslint-config-prettier"
                                                  "eslint-plugin-prettier"))))))))
    (home-page "https://github.com/websockets/ws")
    (synopsis
     "Simple to use, blazing fast and thoroughly tested websocket client and server for Node.js")
    (description
     "Simple to use, blazing fast and thoroughly tested websocket client and server for Node.js")
    (license license:expat)))

(define-public node-xml-js-1.6.11
  (package
    (name "node-xml-js")
    (version "1.6.11")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/xml-js/-/xml-js-1.6.11.tgz")
       (sha256
        (base32 "0sa3b061l6h286gqzqgfpy6v1wz2hn1aljnqxbrzwpikgyajp8kz"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("babel-core" "babel-loader"
                                                  "babel-preset-env"
                                                  "biased-opener"
                                                  "browser-sync"
                                                  "cash-cat"
                                                  "codacy-coverage"
                                                  "codeclimate-test-reporter"
                                                  "codecov"
                                                  "coveralls"
                                                  "cross-env"
                                                  "eslint"
                                                  "globify"
                                                  "istanbul"
                                                  "jasmine"
                                                  "jest"
                                                  "jest-cli"
                                                  "jsonpath"
                                                  "nodemon"
                                                  "npm-run-all"
                                                  "prismjs"
                                                  "typescript"
                                                  "unminified-webpack-plugin"
                                                  "watch"
                                                  "webpack"))))))))
    (inputs (list node-sax-1.4.1))
    (home-page "https://github.com/nashwaan/xml-js#readme")
    (synopsis
     "A convertor between XML text and Javascript object / JSON text.")
    (description
     "A convertor between XML text and Javascript object / JSON text.")
    (license license:expat)))

(define-public node-xml-js-builder-1.0.3
  (package
    (name "node-xml-js-builder")
    (version "1.0.3")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/xml-js-builder/-/xml-js-builder-1.0.3.tgz")
       (sha256
        (base32 "0j5li7pmzs92hn7fbhh420l9gw7svyinvrnrh23r3gyfsyipqfjh"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("@types/node"))))))))
    (inputs (list node-xml-js-1.6.11))
    (home-page "https://github.com/OpenMarshal/xml-js-builder#readme")
    (synopsis "XML library to ease the use of XML with namespaces")
    (description "XML library to ease the use of XML with namespaces")
    (license license:unlicense)))

(define-public node-xml2js-0.6.2
  (package
    (name "node-xml2js")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/xml2js/-/xml2js-0.6.2.tgz")
       (sha256
        (base32 "04baym8p4asfb3cls400cvin5lh5c5clh8xz2525z35jcd71b1k3"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("nyc" "zap" "diff" "docco"
                                                  "coveralls" "coffeescript"))))))))
    (inputs (list node-xmlbuilder-11.0.1 node-sax-1.4.1))
    (home-page "https://github.com/Leonidas-from-XIV/node-xml2js")
    (synopsis "Simple XML to JavaScript object converter.")
    (description "Simple XML to JavaScript object converter.")
    (license license:expat)))

(define-public node-xmlbuilder-11.0.1
  (package
    (name "node-xmlbuilder")
    (version "11.0.1")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/xmlbuilder/-/xmlbuilder-11.0.1.tgz")
       (sha256
        (base32 "150w296fxkzjsxgpsrpanvnr8qdh6razvnl96n4cihsvai5p9xwa"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("coffeescript" "mocha"
                                                  "coffee-coverage" "istanbul"
                                                  "coveralls" "xpath"))))))))
    (home-page "http://github.com/oozcitak/xmlbuilder-js")
    (synopsis "An XML builder for node.js")
    (description "An XML builder for node.js")
    (license license:expat)))

(define-public node-xmlhttprequest-ssl-1.6.3
  (package
    (name "node-xmlhttprequest-ssl")
    (version "1.6.3")
    (source
     (origin
       (method url-fetch)
       (uri
        "https://registry.npmjs.org/xmlhttprequest-ssl/-/xmlhttprequest-ssl-1.6.3.tgz")
       (sha256
        (base32 "0i7856hs3701fwws7z8d7xnqmvkmsw67vh5ah1xbraa30ibwqznr"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build))))
    (home-page "https://github.com/mjwwit/node-XMLHttpRequest#readme")
    (synopsis "XMLHttpRequest for Node")
    (description "XMLHttpRequest for Node")
    (license #f)))

(define-public node-xtend-4.0.2
  (package
    (name "node-xtend")
    (version "4.0.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/xtend/-/xtend-4.0.2.tgz")
       (sha256
        (base32 "0j5s840a0a3mjzxixr95jpila80kbdvrxyixnmxvx6f78cfs08mx"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("tape"))))))))
    (home-page "https://github.com/Raynos/xtend")
    (synopsis "extend like a boss")
    (description "extend like a boss")
    (license license:expat)))
(define-public node-yeast-0.1.2
  (package
    (name "node-yeast")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri "https://registry.npmjs.org/yeast/-/yeast-0.1.2.tgz")
       (sha256
        (base32 "0g4gj0sh1icj8p6jajpbf0yxdqrbdf8wngvhivcbv1b5iyna7dsn"))))
    (build-system node-build-system)
    (arguments
     (list
      #:tests? #f
      #:phases
      #~(modify-phases %standard-phases
          (delete 'build)
          (add-after 'patch-dependencies 'delete-dev-dependencies
            (lambda _
              (modify-json (delete-dependencies '("assume" "istanbul" "mocha"
                                                  "pre-commit" "zuul"))))))))
    (home-page "https://github.com/unshiftio/yeast")
    (synopsis "Tiny but linear growing unique id generator")
    (description "Tiny but linear growing unique id generator")
    (license license:expat)))
