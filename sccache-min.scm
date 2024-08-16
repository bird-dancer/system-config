(use-modules (guix build-system cargo)
	     (guix build-system gnu)
	     (guix download)
	     (guix git-download)
	     ((guix licenses) #:prefix license:)
	     (guix packages)
	     (guix gexp)
	     (guix utils)
	     (gnu packages)
	     (gnu packages admin)
	     (gnu packages audio)
	     (gnu packages autotools)
	     (gnu packages avahi)
	     (gnu packages base)
	     (gnu packages bash)
	     (gnu packages c)
	     (gnu packages cmake)
	     (gnu packages compression)
	     (gnu packages cpp)
	     (gnu packages crates-apple)
	     (gnu packages crates-io)
	     (gnu packages crates-crypto)
	     (gnu packages crates-graphics)
	     (gnu packages crates-gtk)
	     (gnu packages crates-tls)
	     (gnu packages crates-vcs)
	     (gnu packages crates-web)
	     (gnu packages crates-windows)
	     (gnu packages crypto)
	     (gnu packages curl)
	     (gnu packages databases)
	     (gnu packages fontutils)
	     (gnu packages gettext)
	     (gnu packages gl)
	     (gnu packages glib)
	     (gnu packages icu4c)
	     (gnu packages image)
	     (gnu packages jemalloc)
	     (gnu packages libusb)
	     (gnu packages linux)
	     (gnu packages llvm)
	     (gnu packages mail)
	     (gnu packages mp3)
	     (gnu packages multiprecision)
	     (gnu packages nettle)
	     (gnu packages pcre)
	     (gnu packages perl)
	     (gnu packages protobuf)
	     (gnu packages pulseaudio)
	     (gnu packages python)
	     (gnu packages rust)
	     (gnu packages rust-apps)
	     (gnu packages sequoia)
	     (gnu packages serialization)
	     (gnu packages shells)
	     (gnu packages sqlite)
	     (gnu packages ssh)
	     (gnu packages version-control)
	     (gnu packages web)
	     (gnu packages xml)
	     (gnu packages xorg)
	     (gnu packages gtk)
	     (gnu packages webkit)
	     (gnu packages tls)
	     (gnu packages pkg-config)
	     (srfi srfi-1))

(define-public rust-urlparse-0.7
  (package
   (name "rust-urlparse")
   (version "0.7.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "urlparse" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "05w58v7siyiymxsv7q0kxp6lvqh4hs6piiq3j21nfv07x7a540qi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/yykamei/rust-urlparse")
   (synopsis "This is a URL parsing library like urllib.parse in Python3.x.")
   (description
    "This is a URL parsing library like urllib.parse in Python3.x.")
   (license license:expat)))

(define-public rust-displaydoc-0.1
  (package
   (name "rust-displaydoc")
   (version "0.1.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "displaydoc" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "06zl66x08jjd1lhk9hcva7v6fk4zwzjbb9p95687y48nb96sphmd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/yaahc/displaydoc")
   (synopsis
    "A derive macro for implementing the display Trait via a doc comment and string interpolation
")
   (description
    "This package provides a derive macro for implementing the display Trait via a
doc comment and string interpolation")
   (license (list license:expat license:asl2.0))))

(define-public rust-thirtyfour-0.27
  (package
   (name "rust-thirtyfour")
   (version "0.27.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "thirtyfour" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0v8zqs1r0iiirm9wkxp8ivvn05g7qn65vfwlkbcgifclzw559hka"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-base64" ,rust-base64-0.13)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-displaydoc" ,rust-displaydoc-0.1)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-http-client" ,rust-http-client-6)
                      ("rust-isahc" ,rust-isahc-0.9)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-serde-repr" ,rust-serde-repr-0.1)
                      ("rust-stringmatch" ,rust-stringmatch-0.3)
                      ("rust-surf" ,rust-surf-2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-urlparse" ,rust-urlparse-0.7))))
   (home-page "https://github.com/stevepryde/thirtyfour")
   (synopsis
    "Thirtyfour is a Selenium / WebDriver library for Rust, for automated website UI testing.

Tested on Chrome and Firefox, but any webdriver-capable browser should work.
")
   (description
    "Thirtyfour is a Selenium / @code{WebDriver} library for Rust, for automated
website UI testing.  Tested on Chrome and Firefox, but any webdriver-capable
browser should work.")
   (license (list license:expat license:asl2.0))))

(define-public rust-stringmatch-0.3
  (package
   (name "rust-stringmatch")
   (version "0.3.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "stringmatch" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0h1vb2yiw1p12h86yrs8vbs7ww58qggw4pw9iy1w65h3fymzmh58"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-regex" ,rust-regex-1))))
   (home-page "https://github.com/stevepryde/stringmatch")
   (synopsis
    "Allow the use of regular expressions or strings wherever you need string comparison")
   (description
    "Allow the use of regular expressions or strings wherever you need string
comparison")
   (license license:expat)))

(define-public rust-thirtyfour-sync-0.27
  (package
   (name "rust-thirtyfour-sync")
   (version "0.27.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "thirtyfour_sync" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0f1x5km903irvl16wb8z28fzpkwyald1gxn6a7c0kmpyqbk4f7mb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-stringmatch" ,rust-stringmatch-0.3)
                      ("rust-thirtyfour" ,rust-thirtyfour-0.27))))
   (home-page "https://github.com/stevepryde/thirtyfour_sync")
   (synopsis
    "Thirtyfour is a Selenium / WebDriver library for Rust, for automated website UI testing.

This crate is the synchronous version only. For async, see the `thirtyfour` crate instead.
")
   (description
    "Thirtyfour is a Selenium / @code{WebDriver} library for Rust, for automated
website UI testing.  This crate is the synchronous version only.  For async, see
the `thirtyfour` crate instead.")
   (license (list license:expat license:asl2.0))))

(define-public rust-temp-env-0.3
  (package
   (name "rust-temp-env")
   (version "0.3.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "temp-env" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0l7hpkd0nhiy4w70j9xbygl1vjr9ipcfxii164n40iwg0ralhdwn"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures" ,rust-futures-0.3)
                      ("rust-parking-lot" ,rust-parking-lot-0.12))))
   (home-page "https://github.com/vmx/temp-env")
   (synopsis "Set environment variables temporarily.")
   (description "Set environment variables temporarily.")
   (license (list license:expat license:asl2.0))))

(define-public rust-predicates-3
  (package
   (name "rust-predicates")
   (version "3.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "predicates" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1s676s13sva6ikv2qmfmm7n3y3jnzvwbbhy1xzgnr4h58vyppf38"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anstyle" ,rust-anstyle-1)
                      ("rust-difflib" ,rust-difflib-0.4)
                      ("rust-float-cmp" ,rust-float-cmp-0.9)
                      ("rust-normalize-line-endings" ,rust-normalize-line-endings-0.3)
                      ("rust-predicates-core" ,rust-predicates-core-1)
                      ("rust-regex" ,rust-regex-1))))
   (home-page "https://github.com/assert-rs/predicates-rs")
   (synopsis "An implementation of boolean-valued predicate functions.")
   (description "An implementation of boolean-valued predicate functions.")
   (license (list license:expat license:asl2.0))))

(define-public rust-assert-cmd-2
  (package
   (name "rust-assert-cmd")
   (version "2.0.14")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "assert_cmd" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1a3k03dl57psaky6brb53awzmgbjdivb62j8gy1h8n3dqqx4jwpd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anstream" ,rust-anstream-0.6)
                      ("rust-anstyle" ,rust-anstyle-1)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-doc-comment" ,rust-doc-comment-0.3)
                      ("rust-predicates" ,rust-predicates-3)
                      ("rust-predicates-core" ,rust-predicates-core-1)
                      ("rust-predicates-tree" ,rust-predicates-tree-1)
                      ("rust-wait-timeout" ,rust-wait-timeout-0.2))))
   (home-page "https://github.com/assert-rs/assert_cmd")
   (synopsis "Test CLI Applications.")
   (description "Test CLI Applications.")
   (license (list license:expat license:asl2.0))))

(define-public rust-winsafe-0.0.19
  (package
   (name "rust-winsafe")
   (version "0.0.19")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "winsafe" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0169xy9mjma8dys4m8v4x0xhw2gkbhv2v1wsbvcjl9bhnxxd2dfi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/rodrigocfd/winsafe")
   (synopsis "Windows API and GUI in safe, idiomatic Rust.")
   (description "Windows API and GUI in safe, idiomatic Rust.")
   (license license:expat)))

(define-public rust-rustix-0.38
  (package
   (name "rust-rustix")
   (version "0.38.34")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rustix" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "03vkqa2ism7q56rkifyy8mns0wwqrk70f4i4fd53r97p8b05xp3h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-errno" ,rust-errno-0.3)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-linux-raw-sys" ,rust-linux-raw-sys-0.4)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                      ("rust-windows-sys" ,rust-windows-sys-0.52))))
   (home-page "https://github.com/bytecodealliance/rustix")
   (synopsis "Safe Rust bindings to POSIX/Unix/Linux/Winsock-like syscalls")
   (description
    "Safe Rust bindings to POSIX/Unix/Linux/Winsock-like syscalls")
   (license (list license:asl2.0  license:asl2.0
                  license:expat))))

(define-public rust-home-0.5
  (package
   (name "rust-home")
   (version "0.5.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "home" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19grxyg35rqfd802pcc9ys1q3lafzlcjcv2pl2s5q8xpyr5kblg3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-windows-sys" ,rust-windows-sys-0.52))))
   (home-page "https://github.com/rust-lang/cargo")
   (synopsis "Shared definitions of home directories.")
   (description "Shared definitions of home directories.")
   (license (list license:expat license:asl2.0))))

(define-public rust-which-6
  (package
   (name "rust-which")
   (version "6.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "which" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1mz0vijj9qvsmfqkjqw3wf8zqn19p2x0gg7gzfnhaa1bibsy84c2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-either" ,rust-either-1)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-rustix" ,rust-rustix-0.38)
                      ("rust-winsafe" ,rust-winsafe-0.0.19))))
   (home-page "https://github.com/harryfei/which-rs.git")
   (synopsis
    "A Rust equivalent of Unix command \"which\". Locate installed executable in cross platforms.")
   (description
    "This package provides a Rust equivalent of Unix command \"which\".  Locate
installed executable in cross platforms.")
   (license license:expat)))

(define-public rust-version-compare-0.1
  (package
   (name "rust-version-compare")
   (version "0.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "version-compare" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0acg4pmjdbmclg0m7yhijn979mdy66z3k8qrcnvn634f1gy456jp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://timvisee.com/projects/version-compare/")
   (synopsis
    "Rust library to easily compare version numbers with no specific format, and test against various comparison operators.")
   (description
    "Rust library to easily compare version numbers with no specific format, and test
against various comparison operators.")
   (license license:expat)))

(define-public rust-uuid-macro-internal-1
  (package
   (name "rust-uuid-macro-internal")
   (version "1.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "uuid-macro-internal" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18n10d9himcn2a5lwc3hw8178j6hdk1pidxkk9nf71z6rfkvx0cq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "")
   (synopsis "Private implementation details of the uuid! macro.")
   (description "Private implementation details of the uuid! macro.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-uuid-1
  (package
   (name "rust-uuid")
   (version "1.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "uuid" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1h7wks153j08xmdk06wnza3is8pn6j37hihd3kfv95xsxrzwz0x1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-atomic" ,rust-atomic-0.5)
                      ("rust-borsh" ,rust-borsh-1)
                      ("rust-borsh-derive" ,rust-borsh-derive-1)
                      ("rust-bytemuck" ,rust-bytemuck-1)
                      ("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-md-5" ,rust-md-5-0.10)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-sha1-smol" ,rust-sha1-smol-1)
                      ("rust-slog" ,rust-slog-2)
                      ("rust-uuid-macro-internal" ,rust-uuid-macro-internal-1)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                      ("rust-zerocopy" ,rust-zerocopy-0.6))))
   (home-page "https://github.com/uuid-rs/uuid")
   (synopsis "A library to generate and parse UUIDs.")
   (description
    "This package provides a library to generate and parse UUIDs.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-enum-ordinalize-3
  (package
   (name "rust-enum-ordinalize")
   (version "3.1.15")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "enum-ordinalize" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1vj9iw2px39jaya7b8k0vdbrd8wjm55b3ix9n6jixzxv0qzzmw8v"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-num-bigint" ,rust-num-bigint-0.4)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://magiclen.org/enum-ordinalize")
   (synopsis
    "This library enables enums to not only obtain the ordinal values of their variants but also allows for the construction of enums from an ordinal value.")
   (description
    "This library enables enums to not only obtain the ordinal values of their
variants but also allows for the construction of enums from an ordinal value.")
   (license license:expat)))

(define-public rust-educe-0.4
  (package
   (name "rust-educe")
   (version "0.4.23")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "educe" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0py06ad6l0bfdiilg6jbh1dfhf9k0zdywb3xwzdn78s6hbzl400g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-enum-ordinalize" ,rust-enum-ordinalize-3)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://magiclen.org/educe")
   (synopsis
    "This crate offers procedural macros designed to facilitate the swift implementation of Rust's built-in traits.")
   (description
    "This crate offers procedural macros designed to facilitate the swift
implementation of Rust's built-in traits.")
   (license license:expat)))

(define-public rust-tokio-serde-0.8
  (package
   (name "rust-tokio-serde")
   (version "0.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio-serde" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rjl40amhpmfxlynv3gcvizgvm9hm983zqlfk6pqkdw6fdin26li"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bincode" ,rust-bincode-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-educe" ,rust-educe-0.4)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-sink" ,rust-futures-sink-0.3)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-rmp-serde" ,rust-rmp-serde-0.15)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-cbor" ,rust-serde-cbor-0.11)
                      ("rust-serde-json" ,rust-serde-json-1))))
   (home-page "https://github.com/carllerche/tokio-serde")
   (synopsis
    "Send and receive Serde encodable types over the network using Tokio.

This library is used as a building block for serialization format specific
libraries.
")
   (description
    "Send and receive Serde encodable types over the network using Tokio.  This
library is used as a building block for serialization format specific libraries.")
   (license (list license:expat license:asl2.0))))

(define-public rust-rouille-3
  (package
   (name "rust-rouille")
   (version "3.6.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rouille" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "08f9zj2ipbrw47lc9522lkj27lcqa924xpvaf1x4s261gzszn5ip"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                      ("rust-brotli" ,rust-brotli-3)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-deflate" ,rust-deflate-1)
                      ("rust-filetime" ,rust-filetime-0.2)
                      ("rust-multipart" ,rust-multipart-0.18)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1-smol" ,rust-sha1-smol-1)
                      ("rust-threadpool" ,rust-threadpool-1)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-tiny-http" ,rust-tiny-http-0.12)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://github.com/tomaka/rouille")
   (synopsis "High-level idiomatic web framework.")
   (description "High-level idiomatic web framework.")
   (license (list license:expat license:asl2.0))))

(define-public rust-retry-2
  (package
   (name "rust-retry")
   (version "2.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "retry" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1x65r4bsa6n6zfvp2sw3qgrgcc3yqkx86xjha3wpadfyc8hxfrli"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-rand" ,rust-rand-0.8))))
   (home-page "https://github.com/jimmycuadra/retry")
   (synopsis "Utilities for retrying operations that can fail.")
   (description "Utilities for retrying operations that can fail.")
   (license license:expat)))

(define-public rust-regex-automata-0.4
  (package
   (name "rust-regex-automata")
   (version "0.4.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "regex-automata" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1spaq7y4im7s56d1gxa2hi4hzf6dwswb1bv8xyavzya7k25kpf46"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-regex-syntax" ,rust-regex-syntax-0.8))))
   (home-page "https://github.com/rust-lang/regex/tree/master/regex-automata")
   (synopsis "Automata construction and matching using regular expressions.")
   (description
    "Automata construction and matching using regular expressions.")
   (license (list license:expat license:asl2.0))))

(define-public rust-regex-1
  (package
   (name "rust-regex")
   (version "1.10.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "regex" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0k5sb0h2mkwf51ab0gvv3x38jp1q7wgxf63abfbhi0wwvvgxn5y1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-aho-corasick" ,rust-aho-corasick-1)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-regex-automata" ,rust-regex-automata-0.4)
                      ("rust-regex-syntax" ,rust-regex-syntax-0.8))))
   (home-page "https://github.com/rust-lang/regex")
   (synopsis
    "An implementation of regular expressions for Rust. This implementation uses
finite automata and guarantees linear time matching on all inputs.
")
   (description
    "An implementation of regular expressions for Rust.  This implementation uses
finite automata and guarantees linear time matching on all inputs.")
   (license (list license:expat license:asl2.0))))

(define-public rust-openssl-src-300
  (package
   (name "rust-openssl-src")
   (version "300.2.3+3.2.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssl-src" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0hs83dvgr581x87i48hnaf3kv91wv9j7qprip4dvcm8myyv95zsw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1))))
   (home-page "https://github.com/alexcrichton/openssl-src-rs")
   (synopsis "Source of OpenSSL and logic to build it.
")
   (description "Source of @code{OpenSSL} and logic to build it.")
   (license (list license:expat license:asl2.0))))

(define-public rust-bssl-sys-0.1
  (package
   (name "rust-bssl-sys")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "bssl-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0p5v3ad1paf12db4hmwq4j8dvcrppsscf57dwvr880q67hwi4b9i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "")
   (synopsis "Placeholder package for boringssl bindings")
   (description "Placeholder package for boringssl bindings")
   (license license:expat)))

(define-public rust-openssl-sys-0.9
  (package
   (name "rust-openssl-sys")
   (version "0.9.102")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssl-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18jzni7xzdcqwf9r8kp6j46abrxqn82dvc2ylf9kij7varyn75y5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.65)
                      ("rust-bssl-sys" ,rust-bssl-sys-0.1)
                      ("rust-cc" ,rust-cc-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-openssl-src" ,rust-openssl-src-300)
                      ("rust-pkg-config" ,rust-pkg-config-0.3)
                      ("rust-vcpkg" ,rust-vcpkg-0.2))))
   (home-page "https://github.com/sfackler/rust-openssl")
   (synopsis "FFI bindings to OpenSSL")
   (description "FFI bindings to @code{OpenSSL}")
   (license license:expat)))

(define-public rust-openssl-0.10
  (package
   (name "rust-openssl")
   (version "0.10.64")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssl" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "07vb455yh08qh3n493ssw1qsa3zg3zfj438kk2180453hq94i84m"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-foreign-types" ,rust-foreign-types-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-openssl-macros" ,rust-openssl-macros-0.1)
                      ("rust-openssl-sys" ,rust-openssl-sys-0.9))))
   (home-page "https://github.com/sfackler/rust-openssl")
   (synopsis "OpenSSL bindings")
   (description "@code{OpenSSL} bindings")
   (license license:asl2.0)))

(define-public rust-postgres-derive-0.4
  (package
   (name "rust-postgres-derive")
   (version "0.4.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "postgres-derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18l065qawh5lm1d350s32mg6d9rzhj6878d9h7whw18vfjx5w543"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-heck" ,rust-heck-0.4)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/sfackler/rust-postgres")
   (synopsis "An internal crate used by postgres-types")
   (description "An internal crate used by postgres-types")
   (license (list license:expat license:asl2.0))))

(define-public rust-eui48-1
  (package
   (name "rust-eui48")
   (version "1.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "eui48" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00cpf25kc3mxhqnahm0bw9xl19gr2pzc5g84dvkc4mwdbsn1hx48"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-regex" ,rust-regex-1)
                      ("rust-rustc-serialize" ,rust-rustc-serialize-0.3)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1))))
   (home-page "https://github.com/abaumhauer/eui48")
   (synopsis
    "A library to generate and parse IEEE EUI-48 and EUI-64, also known as MAC-48 media access
control addresses. The IEEE claims trademarks on the names EUI-48 and EUI-64, in which EUI is an
abbreviation for Extended Unique Identifier.
")
   (description
    "This package provides a library to generate and parse IEEE EUI-48 and EUI-64,
also known as MAC-48 media access control addresses.  The IEEE claims trademarks
on the names EUI-48 and EUI-64, in which EUI is an abbreviation for Extended
Unique Identifier.")
   (license (list license:expat license:asl2.0))))

(define-public rust-bitstring-0.1
  (package
   (name "rust-bitstring")
   (version "0.1.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "bitstring" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1k3fkd8q1lr6smlpk1r20wcwzp1v2xqymndny5zfgkq0nq6rr8r2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/stbuehler/rust-bitstring")
   (synopsis "Bitstring traits and implementations")
   (description "Bitstring traits and implementations")
   (license license:expat)))

(define-public rust-cidr-0.2
  (package
   (name "rust-cidr")
   (version "0.2.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "cidr" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1n78hgs3h8hk62l35afhyx699fmj3qvd911p3sm9lk55xf9v064d"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitstring" ,rust-bitstring-0.1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/stbuehler/rust-cidr")
   (synopsis "IP network and IP host within network types")
   (description "IP network and IP host within network types")
   (license license:expat)))

(define-public rust-postgres-types-0.2
  (package
   (name "rust-postgres-types")
   (version "0.2.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "postgres-types" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0z5ngy6q5lfy0gf533ka9yrisg9pdcnnv6qaaciva24lxv6k88ld"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-array-init" ,rust-array-init-2)
                      ("rust-bit-vec" ,rust-bit-vec-0.6)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-cidr" ,rust-cidr-0.2)
                      ("rust-eui48" ,rust-eui48-0.4)
                      ("rust-eui48" ,rust-eui48-1)
                      ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
                      ("rust-geo-types" ,rust-geo-types-0.7)
                      ("rust-geo-types" ,rust-geo-types-0.6)
                      ("rust-postgres-derive" ,rust-postgres-derive-0.4)
                      ("rust-postgres-protocol" ,rust-postgres-protocol-0.6)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-smol-str" ,rust-smol-str-0.1)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-time" ,rust-time-0.2)
                      ("rust-uuid" ,rust-uuid-0.8)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://github.com/sfackler/rust-postgres")
   (synopsis "Conversions between Rust and Postgres values")
   (description "Conversions between Rust and Postgres values")
   (license (list license:expat license:asl2.0))))

(define-public rust-postgres-protocol-0.6
  (package
   (name "rust-postgres-protocol")
   (version "0.6.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "postgres-protocol" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0855ijaw98nrx2lzx739wiydk2qyq9jcmw85l15splrw33pwbdj9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.21)
                      ("rust-byteorder" ,rust-byteorder-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
                      ("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-hmac" ,rust-hmac-0.12)
                      ("rust-md-5" ,rust-md-5-0.10)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-stringprep" ,rust-stringprep-0.1))))
   (home-page "https://github.com/sfackler/rust-postgres")
   (synopsis "Low level Postgres protocol APIs")
   (description "Low level Postgres protocol APIs")
   (license (list license:expat license:asl2.0))))

(define-public rust-tokio-postgres-0.7
  (package
   (name "rust-tokio-postgres")
   (version "0.7.10")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio-postgres" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1f7m927fsinxwya36q7psk1xv2r3dqmvg324ww52c86r695j8h6k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-byteorder" ,rust-byteorder-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-fallible-iterator" ,rust-fallible-iterator-0.2)
                      ("rust-futures-channel" ,rust-futures-channel-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-phf" ,rust-phf-0.11)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-postgres-protocol" ,rust-postgres-protocol-0.6)
                      ("rust-postgres-types" ,rust-postgres-types-0.2)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-socket2" ,rust-socket2-0.5)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-whoami" ,rust-whoami-1))))
   (home-page "https://github.com/sfackler/rust-postgres")
   (synopsis "A native, asynchronous PostgreSQL client")
   (description
    "This package provides a native, asynchronous @code{PostgreSQL} client")
   (license (list license:expat license:asl2.0))))

(define-public rust-fail-0.4
  (package
   (name "rust-fail")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "fail" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19l1s48d9ial0rbbwn3h0n0cw8iicbl1x8rypifizjgxb4fcdqrv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-rand" ,rust-rand-0.7))))
   (home-page "https://github.com/tikv/fail-rs")
   (synopsis "Fail points for rust.")
   (description "Fail points for rust.")
   (license license:asl2.0)))

(define-public rust-async-recursion-0.3
  (package
   (name "rust-async-recursion")
   (version "0.3.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-recursion" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18npixkwglnpvjgp89fpcyzf820ngx3a1hxp4hqbkw81p9b8dmyp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/dcchut/async-recursion")
   (synopsis "Recursion for async functions")
   (description "Recursion for async functions")
   (license (list license:expat license:asl2.0))))

(define-public rust-tikv-client-0.3
  (package
   (name "rust-tikv-client")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tikv-client" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0h2rs16dax08d9znfi7s0vi5lsscj4cwqw376irb8kfhwgj6i284"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-recursion" ,rust-async-recursion-0.3)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-derive-new" ,rust-derive-new-0.5)
                      ("rust-either" ,rust-either-1)
                      ("rust-fail" ,rust-fail-0.4)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-prometheus" ,rust-prometheus-0.13)
                      ("rust-prost" ,rust-prost-0.12)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-semver" ,rust-semver-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tonic" ,rust-tonic-0.10))))
   (home-page "https://github.com/tikv/client-rust")
   (synopsis "The Rust language implementation of TiKV client.")
   (description "The Rust language implementation of @code{TiKV} client.")
   (license license:asl2.0)))

(define-public rust-regex-lite-0.1
  (package
   (name "rust-regex-lite")
   (version "0.1.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "regex-lite" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "13ndx7ibckvlasyzylqpmwlbp4kahrrdl3ph2sybsdviyar63dih"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/rust-lang/regex/tree/master/regex-lite")
   (synopsis
    "A lightweight regex engine that optimizes for binary size and compilation time.
")
   (description
    "This package provides a lightweight regex engine that optimizes for binary size
and compilation time.")
   (license (list license:expat license:asl2.0))))

(define-public rust-lazy-regex-proc-macros-3
  (package
   (name "rust-lazy-regex-proc-macros")
   (version "3.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "lazy-regex-proc_macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "02zgaxdq95s0xm4svbdz6f4xkf4kncl5gjfdzyxgr9wpdj7dbg24"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "")
   (synopsis "proc macros for the lazy_regex crate")
   (description "proc macros for the lazy_regex crate")
   (license license:expat)))

(define-public rust-lazy-regex-3
  (package
   (name "rust-lazy-regex")
   (version "3.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "lazy-regex" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0k3sjdcr13j119kgz1h7f1k2mnl787ig9ag436ymipxgjm2vw4jx"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-lazy-regex-proc-macros" ,rust-lazy-regex-proc-macros-3)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-regex-lite" ,rust-regex-lite-0.1))))
   (home-page "https://github.com/Canop/lazy-regex")
   (synopsis "lazy static regular expressions checked at compile time")
   (description "lazy static regular expressions checked at compile time")
   (license license:expat)))

(define-public rust-async-native-tls-0.5
  (package
   (name "rust-async-native-tls")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-native-tls" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1v2v82crqm4fgj1s32gik56m7cwx0ygqjdqc5pw9zrq7rxddqhwk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-native-tls" ,rust-native-tls-0.2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://docs.rs/crate/async-native-tls/")
   (synopsis "Native TLS using futures
")
   (description "Native TLS using futures")
   (license (list license:expat license:asl2.0))))

(define-public rust-suppaftp-5
  (package
   (name "rust-suppaftp")
   (version "5.3.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "suppaftp" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "15lip2adhihk6sirkq5nb4z4ir9rw16cgjs24k1ynivsspr0wafr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-native-tls" ,rust-async-native-tls-0.5)
                      ("rust-async-std" ,rust-async-std-1)
                      ("rust-async-tls" ,rust-async-tls-0.13)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-lazy-regex" ,rust-lazy-regex-3)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-native-tls" ,rust-native-tls-0.2)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-rustls" ,rust-rustls-0.21)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/veeso/suppaftp")
   (synopsis "A super FTP/FTPS client library for Rust")
   (description
    "This package provides a super FTP/FTPS client library for Rust")
   (license license:asl2.0)))

(define-public rust-tikv-jemalloc-sys-0.5
  (package
   (name "rust-tikv-jemalloc-sys")
   (version "0.5.4+5.3.0-patched")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tikv-jemalloc-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1lc5vm1p9dqdvd3mn3264zddnd7z6i95ch3y69prnjgxp0y480ll"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1)
                      ("rust-libc" ,rust-libc-0.2))))
   (home-page "https://github.com/tikv/jemallocator")
   (synopsis "Rust FFI bindings to jemalloc
")
   (description "Rust FFI bindings to jemalloc")
   (license (list license:expat license:asl2.0))))

(define-public rust-librocksdb-sys-0.11
  (package
   (name "rust-librocksdb-sys")
   (version "0.11.0+8.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "librocksdb-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0gly8vx2x65jap1pid32bahn421vxi0zplp9v19d4jyb3c86yf6k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.65)
                      ("rust-bzip2-sys" ,rust-bzip2-sys-0.1)
                      ("rust-cc" ,rust-cc-1)
                      ("rust-glob" ,rust-glob-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libz-sys" ,rust-libz-sys-1)
                      ("rust-lz4-sys" ,rust-lz4-sys-1)
                      ("rust-pkg-config" ,rust-pkg-config-0.3)
                      ("rust-tikv-jemalloc-sys" ,rust-tikv-jemalloc-sys-0.5)
                      ("rust-zstd-sys" ,rust-zstd-sys-2))))
   (home-page "https://github.com/rust-rocksdb/rust-rocksdb")
   (synopsis "Native bindings to librocksdb")
   (description "Native bindings to librocksdb")
   (license (list license:expat license:asl2.0 license:bsd-3))))

(define-public rust-rocksdb-0.21
  (package
   (name "rust-rocksdb")
   (version "0.21.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rocksdb" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zlz55fkk55nln4jchifx9ishv3dj4a2w3abw060mma18051fvxv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-librocksdb-sys" ,rust-librocksdb-sys-0.11)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/rust-rocksdb/rust-rocksdb")
   (synopsis "Rust wrapper for Facebook's RocksDB embeddable database")
   (description
    "Rust wrapper for Facebook's @code{RocksDB} embeddable database")
   (license license:asl2.0)))

(define-public rust-winnow-0.6
  (package
   (name "rust-winnow")
   (version "0.6.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "winnow" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ll341mbjfnqdc6mr1z8rnhpk5hxmz6qg58ynbdr07qfmam7djgh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anstream" ,rust-anstream-0.3)
                      ("rust-anstyle" ,rust-anstyle-1)
                      ("rust-is-terminal" ,rust-is-terminal-0.4)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-terminal-size" ,rust-terminal-size-0.2))))
   (home-page "https://github.com/winnow-rs/winnow")
   (synopsis "A byte-oriented, zero-copy, parser combinators library")
   (description
    "This package provides a byte-oriented, zero-copy, parser combinators library")
   (license license:expat)))

(define-public rust-toml-edit-0.22
  (package
   (name "rust-toml-edit")
   (version "0.22.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "toml_edit" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1vyxc7naf61hxhn8lccq1x8scfaxb20db8cd96jb41d7d17qscnk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                      ("rust-kstring" ,rust-kstring-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-spanned" ,rust-serde-spanned-0.6)
                      ("rust-toml-datetime" ,rust-toml-datetime-0.6)
                      ("rust-winnow" ,rust-winnow-0.6))))
   (home-page "https://github.com/toml-rs/toml")
   (synopsis "Yet another format-preserving TOML parser.")
   (description "Yet another format-preserving TOML parser.")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-spanned-0.6
  (package
   (name "rust-serde-spanned")
   (version "0.6.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_spanned" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1hgh6s3jjwyzhfk3xwb6pnnr1misq9nflwq0f026jafi37s24dpb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/toml-rs/toml")
   (synopsis "Serde-compatible spanned Value")
   (description "Serde-compatible spanned Value")
   (license (list license:expat license:asl2.0))))

(define-public rust-toml-0.8
  (package
   (name "rust-toml")
   (version "0.8.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "toml" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18rs8cbzmapwcxf0lpdwz84fmsgp9h5vv6xay5d4m2r0x12ibpg9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-spanned" ,rust-serde-spanned-0.6)
                      ("rust-toml-datetime" ,rust-toml-datetime-0.6)
                      ("rust-toml-edit" ,rust-toml-edit-0.22))))
   (home-page "https://github.com/toml-rs/toml")
   (synopsis
    "A native Rust encoder and decoder of TOML-formatted files and streams. Provides
implementations of the standard Serialize/Deserialize traits for TOML data to
facilitate deserializing and serializing Rust structures.
")
   (description
    "This package provides a native Rust encoder and decoder of TOML-formatted files
and streams.  Provides implementations of the standard Serialize/Deserialize
traits for TOML data to facilitate deserializing and serializing Rust
structures.")
   (license (list license:expat license:asl2.0))))

(define-public rust-dlv-list-0.5
  (package
   (name "rust-dlv-list")
   (version "0.5.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "dlv-list" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0pqvrinxzdz7bpy4a3p450h8krns3bd0mc3w0qqvm03l2kskj824"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-const-random" ,rust-const-random-0.1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/sgodwincs/dlv-list-rs")
   (synopsis "Semi-doubly linked list implemented using a vector")
   (description "Semi-doubly linked list implemented using a vector")
   (license (list license:expat license:asl2.0))))

(define-public rust-ordered-multimap-0.7
  (package
   (name "rust-ordered-multimap")
   (version "0.7.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ordered-multimap" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ygg08g2h381r3zbclba4zx4amm25zd2hsqqmlxljc00mvf3q829"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-dlv-list" ,rust-dlv-list-0.5)
                      ("rust-hashbrown" ,rust-hashbrown-0.14)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/sgodwincs/ordered-multimap-rs")
   (synopsis "Insertion ordered multimap")
   (description "Insertion ordered multimap")
   (license license:expat)))

(define-public rust-rust-ini-0.20
  (package
   (name "rust-rust-ini")
   (version "0.20.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rust-ini" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "12h608iy8kzxdrd0i5r20pzmgnw5fwg4rjwy5azq526bdch9h1iy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-ordered-multimap" ,rust-ordered-multimap-0.7)
                      ("rust-unicase" ,rust-unicase-2))))
   (home-page "https://github.com/zonyitoo/rust-ini")
   (synopsis "An Ini configuration file parsing library in Rust")
   (description "An Ini configuration file parsing library in Rust")
   (license license:expat)))

(define-public rust-reqsign-0.14
  (package
   (name "rust-reqsign")
   (version "0.14.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "reqsign" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1xgfhhbrg22p1y73zskp8ph0z2qijy473b7lmd0xkx4zvvcikqs3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-base64" ,rust-base64-0.21)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-form-urlencoded" ,rust-form-urlencoded-1)
                      ("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-hmac" ,rust-hmac-0.12)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-http" ,rust-http-0.2)
                      ("rust-jsonwebtoken" ,rust-jsonwebtoken-9)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-quick-xml" ,rust-quick-xml-0.31)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-rsa" ,rust-rsa-0.9)
                      ("rust-rust-ini" ,rust-rust-ini-0.20)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-toml" ,rust-toml-0.8))))
   (home-page "https://github.com/Xuanwo/reqsign")
   (synopsis "Signing API requests without effort.")
   (description "Signing API requests without effort.")
   (license license:asl2.0)))

(define-public rust-tokio-retry-0.3
  (package
   (name "rust-tokio-retry")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio-retry" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0kr1hnm5dmb9gfkby88yg2xj8g6x4i4gipva0c8ca3xyxhvfnmvz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-pin-project" ,rust-pin-project-1)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/srijs/rust-tokio-retry")
   (synopsis "Extensible, asynchronous retry behaviours for futures/tokio")
   (description "Extensible, asynchronous retry behaviours for futures/tokio")
   (license license:expat)))

(define-public rust-futures-rustls-0.24
  (package
   (name "rust-futures-rustls")
   (version "0.24.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "futures-rustls" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0a1acak02s42wh6qjmjyviscc5j77qsh1qrqd023hdqqikv3rg9m"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-rustls" ,rust-rustls-0.21))))
   (home-page "https://github.com/quininer/futures-rustls")
   (synopsis "Asynchronous TLS/SSL streams for futures using Rustls.")
   (description "Asynchronous TLS/SSL streams for futures using Rustls.")
   (license (list license:expat license:asl2.0))))

(define-public rust-crc16-0.4
  (package
   (name "rust-crc16")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "crc16" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zzwb5iv51wnh96532cxkk4aa8ys47rhzrjy98wqcys25ks8k01k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/blackbeam/rust-crc16")
   (synopsis "A CRC16 implementation")
   (description "This package provides a CRC16 implementation")
   (license license:expat)))

(define-public rust-async-native-tls-0.4
  (package
   (name "rust-async-native-tls")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-native-tls" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zhkka5azpr03wg2bswabmwcwcqbdia17h2d17hk4wk47kn4qzfm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-native-tls" ,rust-native-tls-0.2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://docs.rs/crate/async-native-tls/")
   (synopsis "Native TLS using futures
")
   (description "Native TLS using futures")
   (license (list license:expat license:asl2.0))))

(define-public rust-redis-0.23
  (package
   (name "rust-redis")
   (version "0.23.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "redis" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1fpqnckjlrhl7jbr1flrqg2hpccy3pz91gfiwzw2nh9zpg0csjag"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ahash" ,rust-ahash-0.7)
                      ("rust-arc-swap" ,rust-arc-swap-1)
                      ("rust-async-native-tls" ,rust-async-native-tls-0.4)
                      ("rust-async-std" ,rust-async-std-1)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-combine" ,rust-combine-4)
                      ("rust-crc16" ,rust-crc16-0.4)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-futures-rustls" ,rust-futures-rustls-0.24)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-native-tls" ,rust-native-tls-0.2)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-r2d2" ,rust-r2d2-0.8)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-rustls" ,rust-rustls-0.21)
                      ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
                      ("rust-ryu" ,rust-ryu-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1-smol" ,rust-sha1-smol-1)
                      ("rust-socket2" ,rust-socket2-0.4)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                      ("rust-tokio-retry" ,rust-tokio-retry-0.3)
                      ("rust-tokio-rustls" ,rust-tokio-rustls-0.24)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-url" ,rust-url-2)
                      ("rust-webpki-roots" ,rust-webpki-roots-0.23))))
   (home-page "https://github.com/redis-rs/redis-rs")
   (synopsis "Redis driver for Rust.")
   (description "Redis driver for Rust.")
   (license license:bsd-3)))

(define-public rust-redb-1
  (package
   (name "rust-redb")
   (version "1.5.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "redb" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "198g8sd3mn2knl6a4vgfmp05756dl6w74w8svlwplr5ssvn84zzx"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-pyo3" ,rust-pyo3-0.20)
                      ("rust-pyo3-build-config" ,rust-pyo3-build-config-0.20))))
   (home-page "https://www.redb.org")
   (synopsis "Rust Embedded DataBase")
   (description "Rust Embedded @code{DataBase}")
   (license (list license:expat license:asl2.0))))

(define-public rust-prometheus-client-derive-encode-0.4
  (package
   (name "rust-prometheus-client-derive-encode")
   (version "0.4.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "prometheus-client-derive-encode" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1f22ckswiqnjlh1xaxkh8pqlfsdhj851ns33bnvrcsczp97743s4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/prometheus/client_rust")
   (synopsis "Auxiliary crate to derive Encode trait from prometheus-client.")
   (description
    "Auxiliary crate to derive Encode trait from prometheus-client.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-dtoa-1
  (package
   (name "rust-dtoa")
   (version "1.0.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "dtoa" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0lv6zzgrd3hfh83n9jqhzz8645729hv1wclag8zw4dbmx3w2pfyw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-no-panic" ,rust-no-panic-0.1))))
   (home-page "https://github.com/dtolnay/dtoa")
   (synopsis "Fast floating point primitive to string conversion")
   (description "Fast floating point primitive to string conversion")
   (license (list license:expat license:asl2.0))))

(define-public rust-prometheus-client-0.22
  (package
   (name "rust-prometheus-client")
   (version "0.22.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "prometheus-client" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1alvj3amnjary5qlv9fk3z1wz79zybjyjfm7y84jacralafrbjn1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-dtoa" ,rust-dtoa-1)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-prometheus-client-derive-encode" ,rust-prometheus-client-derive-encode-0.4)
                      ("rust-prost" ,rust-prost-0.11)
                      ("rust-prost-build" ,rust-prost-build-0.11)
                      ("rust-prost-types" ,rust-prost-types-0.11))))
   (home-page "https://github.com/prometheus/client_rust")
   (synopsis
    "Open Metrics client library allowing users to natively instrument applications.")
   (description
    "Open Metrics client library allowing users to natively instrument applications.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-procfs-0.14
  (package
   (name "rust-procfs")
   (version "0.14.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "procfs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0sdv4r3gikcz12qzb4020rlcq7vn8kh72vgwmvk7fgw7n2n8vpmi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-bitflags" ,rust-bitflags-1)
                      ("rust-byteorder" ,rust-byteorder-1)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-rustix" ,rust-rustix-0.36)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/eminence/procfs")
   (synopsis "Interface to the linux procfs pseudo-filesystem")
   (description "Interface to the linux procfs pseudo-filesystem")
   (license (list license:expat license:asl2.0))))

(define-public rust-prometheus-0.13
  (package
   (name "rust-prometheus")
   (version "0.13.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "prometheus" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "136gpgkh52kg3w6cxj1fdqqq5kr9ch31ci0lq6swxxdxbz8i3624"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-fnv" ,rust-fnv-1)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-procfs" ,rust-procfs-0.14)
                      ("rust-protobuf" ,rust-protobuf-2)
                      ("rust-protobuf-codegen-pure" ,rust-protobuf-codegen-pure-2)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/tikv/rust-prometheus")
   (synopsis "Prometheus instrumentation library for Rust applications.")
   (description "Prometheus instrumentation library for Rust applications.")
   (license license:asl2.0)))

(define-public rust-probe-0.5
  (package
   (name "rust-probe")
   (version "0.5.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "probe" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18z5lqcx2bhl4pabvy9d6jixfm0m3yg0zij4fc18y33k9d2d5qnq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/cuviper/probe-rs")
   (synopsis "Static instrumentation probes")
   (description "Static instrumentation probes")
   (license (list license:asl2.0 license:expat))))

(define-public rust-zigzag-0.1
  (package
   (name "rust-zigzag")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zigzag" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1przksgh335b16mqf1clgi6yxnypdyw67f1hlcbcx1ldl80h9d3h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-num-traits" ,rust-num-traits-0.2))))
   (home-page "https://github.com/That3Percent/zigzag")
   (synopsis "ZigZag encoding and decoding")
   (description "@code{ZigZag} encoding and decoding")
   (license license:expat)))

(define-public rust-asynchronous-codec-0.7
  (package
   (name "rust-asynchronous-codec")
   (version "0.7.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "asynchronous-codec" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0cy2aqcq7km8ggpjmfvrbckvjgf1bpxh803kb4z90zqp48h0fq58"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-futures-sink" ,rust-futures-sink-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-cbor" ,rust-serde-cbor-0.11)
                      ("rust-serde-json" ,rust-serde-json-1))))
   (home-page "https://github.com/mxinden/asynchronous-codec")
   (synopsis "Utilities for encoding and decoding frames using `async/await`")
   (description
    "Utilities for encoding and decoding frames using `async/await`")
   (license license:expat)))

(define-public rust-unsigned-varint-0.8
  (package
   (name "rust-unsigned-varint")
   (version "0.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "unsigned-varint" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "01lwzxp0hf5p966fjq0lyz2x4l44b52py1fbffp9clabn9cnj1pb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-asynchronous-codec" ,rust-asynchronous-codec-0.7)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-tokio-util" ,rust-tokio-util-0.7))))
   (home-page "https://github.com/paritytech/unsigned-varint")
   (synopsis "unsigned varint encoding")
   (description "unsigned varint encoding")
   (license license:expat)))

(define-public rust-persy-1
  (package
   (name "rust-persy")
   (version "1.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "persy" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00kddxyhlbsfnv5yg3w6x80yy8ww8qrjcjr81vnhvadk18jvgx4y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-crc" ,rust-crc-3)
                      ("rust-data-encoding" ,rust-data-encoding-2)
                      ("rust-fs2" ,rust-fs2-0.4)
                      ("rust-linked-hash-map" ,rust-linked-hash-map-0.5)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unsigned-varint" ,rust-unsigned-varint-0.8)
                      ("rust-zigzag" ,rust-zigzag-0.1))))
   (home-page "https://persy.rs")
   (synopsis "Transactional Persistence Engine")
   (description "Transactional Persistence Engine")
   (license license:mpl2.0)))

(define-public rust-opentelemetry-0.21
  (package
   (name "rust-opentelemetry")
   (version "0.21.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "opentelemetry" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "12jfmyx8k9q2sjlx4wp76ddzaf94i7lnkliv1c9mj164bnd36chy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-sink" ,rust-futures-sink-0.3)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-urlencoding" ,rust-urlencoding-2))))
   (home-page "https://github.com/open-telemetry/opentelemetry-rust")
   (synopsis "A metrics collection and distributed tracing framework")
   (description
    "This package provides a metrics collection and distributed tracing framework")
   (license license:asl2.0)))

(define-public rust-openssh-sftp-protocol-0.24
  (package
   (name "rust-openssh-sftp-protocol")
   (version "0.24.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh-sftp-protocol" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1q4kwfqrq2xjysybx95jbcfkagw24di24hfjjmprcy29g0nm6f5z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-num-derive" ,rust-num-derive-0.3)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-openssh-sftp-protocol-error" ,rust-openssh-sftp-protocol-error-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-ssh-format" ,rust-ssh-format-0.14)
                      ("rust-vec-strings" ,rust-vec-strings-0.4))))
   (home-page "https://github.com/openssh-rust/openssh-sftp-client")
   (synopsis "Data format used to communicate with openssh mux server.")
   (description "Data format used to communicate with openssh mux server.")
   (license license:expat)))

(define-public rust-thin-vec-0.2
  (package
   (name "rust-thin-vec")
   (version "0.2.13")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "thin-vec" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0jsyprh9gjyp2ivnpbfpqmwdcqxfyjj1s9srmfikdhjjh7a91353"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/gankra/thin-vec")
   (synopsis "A vec that takes up less space on the stack")
   (description
    "This package provides a vec that takes up less space on the stack")
   (license (list license:expat license:asl2.0))))

(define-public rust-vec-strings-0.4
  (package
   (name "rust-vec-strings")
   (version "0.4.8")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "vec-strings" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0nbnww23hi87dfn1bb0ii20cdgkhsdgx92i34aaj3vm7wa4r8l68"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1)
                      ("rust-thin-vec" ,rust-thin-vec-0.2))))
   (home-page "https://github.com/NobodyXu/vec-strings")
   (synopsis "Store any string efficiently in an immutable way.")
   (description "Store any string efficiently in an immutable way.")
   (license license:expat)))

(define-public rust-openssh-sftp-protocol-error-0.1
  (package
   (name "rust-openssh-sftp-protocol-error")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh-sftp-protocol-error" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1y3gjmm038qsivphqfdjf8xxdhfj9ss9rj3yw1m8cdzhnfg2c687"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-vec-strings" ,rust-vec-strings-0.4))))
   (home-page "https://github.com/openssh-rust/openssh-sftp-client")
   (synopsis "Data format used to communicate with openssh mux server.")
   (description "Data format used to communicate with openssh mux server.")
   (license license:expat)))

(define-public rust-openssh-sftp-error-0.4
  (package
   (name "rust-openssh-sftp-error")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh-sftp-error" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "15i9317iz13sfckc0q43zkv0dyg30dh1lj3g308dy56pjfhax9b1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-awaitable-error" ,rust-awaitable-error-0.1)
                      ("rust-openssh" ,rust-openssh-0.10)
                      ("rust-openssh-sftp-protocol-error" ,rust-openssh-sftp-protocol-error-0.1)
                      ("rust-ssh-format-error" ,rust-ssh-format-error-0.1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/openssh-rust/openssh-sftp-client")
   (synopsis "Error type used when communicating with openssh sftp server.")
   (description
    "Error type used when communicating with openssh sftp server.")
   (license license:expat)))

(define-public rust-concurrent-arena-0.1
  (package
   (name "rust-concurrent-arena")
   (version "0.1.8")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "concurrent_arena" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1bvxycq60kcgz9ndw5s41pl8fvyqwywsij8pscaswjf2xkac4af5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-triomphe" ,rust-triomphe-0.1))))
   (home-page "https://github.com/NobodyXu/concurrent_arena")
   (synopsis "u32 concurrent insertion/removal arena that returns ArenaArc")
   (description
    "u32 concurrent insertion/removal arena that returns @code{ArenaArc}")
   (license license:expat)))

(define-public rust-awaitable-error-0.1
  (package
   (name "rust-awaitable-error")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "awaitable-error" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "12kzgrgfn05s98vvhbz1xqv1yirllpy5w5xbrqy59y6d6sb4dcym"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/NobodyXu/awaitable")
   (synopsis
    "Awaitable type with input and output that can be stored in container.")
   (description
    "Awaitable type with input and output that can be stored in container.")
   (license license:expat)))

(define-public rust-awaitable-0.4
  (package
   (name "rust-awaitable")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "awaitable" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0x879j2bwc0yiijr1zr410cng76r8a5k7rd1qravcg3nkaf49bvh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-awaitable-error" ,rust-awaitable-error-0.1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12))))
   (home-page "https://github.com/NobodyXu/awaitable")
   (synopsis
    "Awaitable type with input and output that can be stored in container.")
   (description
    "Awaitable type with input and output that can be stored in container.")
   (license license:expat)))

(define-public rust-openssh-sftp-client-lowlevel-0.6
  (package
   (name "rust-openssh-sftp-client-lowlevel")
   (version "0.6.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh-sftp-client-lowlevel" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0hihm3clb08qr4g5753jwmrahj2k1125b20hbg7iz4314yjz312a"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-awaitable" ,rust-awaitable-0.4)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-concurrent-arena" ,rust-concurrent-arena-0.1)
                      ("rust-derive-destructure2" ,rust-derive-destructure2-0.1)
                      ("rust-openssh-sftp-error" ,rust-openssh-sftp-error-0.4)
                      ("rust-openssh-sftp-protocol" ,rust-openssh-sftp-protocol-0.24)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-io-utility" ,rust-tokio-io-utility-0.7))))
   (home-page "https://github.com/openssh-rust/openssh-sftp-client")
   (synopsis "Lowlevel utilities to communicate with openssh sftp server.")
   (description "Lowlevel utilities to communicate with openssh sftp server.")
   (license license:expat)))

(define-public rust-derive-destructure2-0.1
  (package
   (name "rust-derive-destructure2")
   (version "0.1.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "derive_destructure2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "037w2cv2429vhwrgpqshzygzncdcqxhmmviiq07nyagzj2n9gdk4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/NobodyXu/derive_destructure2")
   (synopsis "Destructure structs that implement Drop")
   (description "Destructure structs that implement Drop")
   (license (list license:expat license:asl2.0))))

(define-public rust-openssh-sftp-client-0.14
  (package
   (name "rust-openssh-sftp-client")
   (version "0.14.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh-sftp-client" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1hav80dzgv6dvyh2wjw7kz41g1al936gh1c1yp6msw7b345i2j0s"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-derive-destructure2" ,rust-derive-destructure2-0.1)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-openssh" ,rust-openssh-0.10)
                      ("rust-openssh-sftp-client-lowlevel" ,rust-openssh-sftp-client-lowlevel-0.6)
                      ("rust-openssh-sftp-error" ,rust-openssh-sftp-error-0.4)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-scopeguard" ,rust-scopeguard-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-io-utility" ,rust-tokio-io-utility-0.7)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-tracing" ,rust-tracing-0.1))))
   (home-page "https://github.com/openssh-rust/openssh-sftp-client")
   (synopsis "Highlevel API used to communicate with openssh sftp server.")
   (description "Highlevel API used to communicate with openssh sftp server.")
   (license license:expat)))

(define-public rust-tokio-pipe-0.2
  (package
   (name "rust-tokio-pipe")
   (version "0.2.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio-pipe" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1117ahamrgc23qc6g22i1cflfpg3pfs498581gxbhqdxzx5sh4zj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/yskszk63/tokio-pipe")
   (synopsis "Asynchronous pipe(2) library using tokio.")
   (description "Asynchronous pipe(2) library using tokio.")
   (license (list license:expat license:asl2.0))))

(define-public rust-tokio-io-utility-0.7
  (package
   (name "rust-tokio-io-utility")
   (version "0.7.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio-io-utility" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0qy2sx7fkla9j37fp9z2ah4kqay6fzn6l7y4qx90wwbms5a2crwd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/openssh-rust/tokio-io-utility.git")
   (synopsis "Some helper functions for tokio::io.")
   (description "Some helper functions for tokio::io.")
   (license license:expat)))

(define-public rust-ssh-format-0.14
  (package
   (name "rust-ssh-format")
   (version "0.14.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ssh_format" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "011k3zq5b13j9ppw2rmqyr5gnpybb045a8zc4z1rg40w3l433ar4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-ssh-format-error" ,rust-ssh-format-error-0.1))))
   (home-page "https://github.com/openssh-rust/ssh_format")
   (synopsis "Data format used to communicate with openssh mux server.")
   (description "Data format used to communicate with openssh mux server.")
   (license license:expat)))

(define-public rust-sendfd-0.4
  (package
   (name "rust-sendfd")
   (version "0.4.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "sendfd" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "160pf2dp5r8smjc6ssk6jf9k93vc280wk8i362xi6zi6zjw72jv0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/standard-ai/sendfd")
   (synopsis "Send file descriptors along with data over UNIX domain sockets")
   (description
    "Send file descriptors along with data over UNIX domain sockets")
   (license (list license:asl2.0 license:bsd-3))))

(define-public rust-ssh-format-error-0.1
  (package
   (name "rust-ssh-format-error")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ssh_format_error" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0311divq777kl3844lnbzqcci8bsnmpabs7p3vvi39kwvqcnag5y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/openssh-rust/ssh_format")
   (synopsis "Data format used to communicate with openssh mux server.")
   (description "Data format used to communicate with openssh mux server.")
   (license license:expat)))

(define-public rust-openssh-mux-client-error-0.1
  (package
   (name "rust-openssh-mux-client-error")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh-mux-client-error" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0j76ibjlv6a0pjqj914hr1c8x3jq6s0c8viy0dba9lpljbjljp81"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ssh-format-error" ,rust-ssh-format-error-0.1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/openssh-rust/openssh-mux-client")
   (synopsis "openssh mux client.")
   (description "openssh mux client.")
   (license license:expat)))

(define-public rust-non-zero-byte-slice-0.1
  (package
   (name "rust-non-zero-byte-slice")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "non-zero-byte-slice" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0940wdjqvdwfh04ppms465aghrl0dn9x1g4125fz178wl7da3nl9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/openssh-rust/openssh-mux-client")
   (synopsis "openssh mux client.")
   (description "openssh mux client.")
   (license license:expat)))

(define-public rust-openssh-mux-client-0.17
  (package
   (name "rust-openssh-mux-client")
   (version "0.17.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh-mux-client" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "112kzk2m23ib9rs0f2phr5rg8851ddv9ypjzmkinajzbwsm1h60h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-non-zero-byte-slice" ,rust-non-zero-byte-slice-0.1)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-openssh-mux-client-error" ,rust-openssh-mux-client-error-0.1)
                      ("rust-sendfd" ,rust-sendfd-0.4)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-ssh-format" ,rust-ssh-format-0.14)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-io-utility" ,rust-tokio-io-utility-0.7)
                      ("rust-typed-builder" ,rust-typed-builder-0.18))))
   (home-page "https://github.com/openssh-rust/openssh-mux-client")
   (synopsis "openssh mux client.")
   (description "openssh mux client.")
   (license license:expat)))

(define-public rust-openssh-0.10
  (package
   (name "rust-openssh")
   (version "0.10.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssh" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18sq2pli8m5by65nbz91jsn6nk86vv7gzkgfqwb7hx38zk1ivdya"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-openssh-mux-client" ,rust-openssh-mux-client-0.17)
                      ("rust-shell-escape" ,rust-shell-escape-0.1)
                      ("rust-tempfile" ,rust-tempfile-3)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-pipe" ,rust-tokio-pipe-0.2))))
   (home-page "https://github.com/openssh-rust/openssh.git")
   (synopsis "SSH through OpenSSH")
   (description "SSH through @code{OpenSSH}")
   (license (list license:expat license:asl2.0))))

(define-public rust-saturating-0.1
  (package
   (name "rust-saturating")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "saturating" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0w8asisv01gfc73vsa1a3c8sayqqlzq5sisx3z2m3v1q5y5ygs7c"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/breeswish/saturating-rs")
   (synopsis
    "Provides Saturating<T>, an intentionally-saturating arithmetic wrapper.")
   (description
    "This package provides Saturating<T>, an intentionally-saturating arithmetic
wrapper.")
   (license license:expat)))

(define-public rust-mysql-common-derive-0.30
  (package
   (name "rust-mysql-common-derive")
   (version "0.30.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mysql-common-derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "13wklhdb8hwpgfmja5in2h37nf4irc0wgwhi7qhx5xlvvfhdic2n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-darling" ,rust-darling-0.20)
                      ("rust-heck" ,rust-heck-0.4)
                      ("rust-num-bigint" ,rust-num-bigint-0.4)
                      ("rust-proc-macro-crate" ,rust-proc-macro-crate-1)
                      ("rust-proc-macro-error" ,rust-proc-macro-error-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2)
                      ("rust-termcolor" ,rust-termcolor-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/blackbeam/rust_mysql_common")
   (synopsis "Derive macros for MySql common primitives")
   (description "Derive macros for @code{MySql} common primitives")
   (license (list license:expat license:asl2.0))))

(define-public rust-frunk-proc-macros-0.1
  (package
   (name "rust-frunk-proc-macros")
   (version "0.1.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "frunk_proc_macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "14rsw5znll59xhlpy4il0cza1v1gxw9qwpn0845k0sws98fmmf3i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-frunk-core" ,rust-frunk-core-0.4)
                      ("rust-frunk-proc-macro-helpers" ,rust-frunk-proc-macro-helpers-0.1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/lloydmeta/frunk")
   (synopsis "Proc macros for Frunk")
   (description "Proc macros for Frunk")
   (license license:expat)))

(define-public rust-frunk-proc-macro-helpers-0.1
  (package
   (name "rust-frunk-proc-macro-helpers")
   (version "0.1.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "frunk_proc_macro_helpers" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0b1xl4cfrfai7qi5cb4h9x0967miv3dvwvnsmr1vg4ljhgflmd9m"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-frunk-core" ,rust-frunk-core-0.4)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/lloydmeta/frunk")
   (synopsis "Common internal functions for frunk's proc macros")
   (description "Common internal functions for frunk's proc macros")
   (license license:expat)))

(define-public rust-frunk-derives-0.4
  (package
   (name "rust-frunk-derives")
   (version "0.4.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "frunk_derives" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0blsy6aq6rbvxcc0337g15083w24s8539fmv8rwp1qan2qprkymh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-frunk-proc-macro-helpers" ,rust-frunk-proc-macro-helpers-0.1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/lloydmeta/frunk")
   (synopsis
    "frunk_derives contains the custom derivations for certain traits in Frunk.")
   (description
    "frunk_derives contains the custom derivations for certain traits in Frunk.")
   (license license:expat)))

(define-public rust-frunk-core-0.4
  (package
   (name "rust-frunk-core")
   (version "0.4.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "frunk_core" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1mjqnn7dclwn8d5g0mrfkg360cgn70a7mm8arx6fc1xxn3x6j95g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/lloydmeta/frunk")
   (synopsis
    "Frunk core provides developers with HList, Coproduct, LabelledGeneric and Generic")
   (description
    "Frunk core provides developers with HList, Coproduct, @code{LabelledGeneric} and
Generic")
   (license license:expat)))

(define-public rust-frunk-0.4
  (package
   (name "rust-frunk")
   (version "0.4.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "frunk" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11v242h7zjka0lckxcffn5pjgr3jzxyljy7ffr0ppy8jkssm38qi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-frunk-core" ,rust-frunk-core-0.4)
                      ("rust-frunk-derives" ,rust-frunk-derives-0.4)
                      ("rust-frunk-proc-macros" ,rust-frunk-proc-macros-0.1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/lloydmeta/frunk")
   (synopsis
    "Frunk provides developers with a number of functional programming tools like HList, Coproduct, Generic, LabelledGeneric, Validated, Monoid, Semigroup and friends.")
   (description
    "Frunk provides developers with a number of functional programming tools like
HList, Coproduct, Generic, @code{LabelledGeneric}, Validated, Monoid, Semigroup
and friends.")
   (license license:expat)))

(define-public rust-mysql-common-0.30
  (package
   (name "rust-mysql-common")
   (version "0.30.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mysql_common" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "137waa4xkrx8293l2j1740qw232bygrchkgfns4pjhvb69d9sd2p"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.21)
                      ("rust-bigdecimal" ,rust-bigdecimal-0.2)
                      ("rust-bigdecimal" ,rust-bigdecimal-0.3)
                      ("rust-bindgen" ,rust-bindgen-0.53)
                      ("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bitvec" ,rust-bitvec-1)
                      ("rust-byteorder" ,rust-byteorder-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-cc" ,rust-cc-1)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-cmake" ,rust-cmake-0.1)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-frunk" ,rust-frunk-0.4)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-lexical" ,rust-lexical-6)
                      ("rust-mysql-common-derive" ,rust-mysql-common-derive-0.30)
                      ("rust-num-bigint" ,rust-num-bigint-0.4)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-rust-decimal" ,rust-rust-decimal-1)
                      ("rust-saturating" ,rust-saturating-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-subprocess" ,rust-subprocess-0.2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-time" ,rust-time-0.2)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://github.com/blackbeam/rust_mysql_common")
   (synopsis "MySql protocol primitives")
   (description "@code{MySql} protocol primitives")
   (license (list license:expat license:asl2.0))))

(define-public rust-lru-0.10
  (package
   (name "rust-lru")
   (version "0.10.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "lru" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0w5n2sgh66ac8ihqv6688mlm7zb3ks18jlbzpbhwgw3x8jp8z3ki"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-hashbrown" ,rust-hashbrown-0.13))))
   (home-page "https://github.com/jeromefroe/lru-rs")
   (synopsis "A LRU cache implementation")
   (description "This package provides a LRU cache implementation")
   (license license:expat)))

(define-public rust-mysql-async-0.32
  (package
   (name "rust-mysql-async")
   (version "0.32.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mysql_async" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "02lcbajka2x2bbh6f2mmkzl11r6n4pqc29pqyxjkvydinmcjy9zm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-crossbeam" ,rust-crossbeam-0.8)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-sink" ,rust-futures-sink-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-lru" ,rust-lru-0.10)
                      ("rust-mio" ,rust-mio-0.8)
                      ("rust-mysql-common" ,rust-mysql-common-0.30)
                      ("rust-native-tls" ,rust-native-tls-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-pem" ,rust-pem-2)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-priority-queue" ,rust-priority-queue-1)
                      ("rust-rustls" ,rust-rustls-0.21)
                      ("rust-rustls-pemfile" ,rust-rustls-pemfile-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-socket2" ,rust-socket2-0.5)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                      ("rust-tokio-rustls" ,rust-tokio-rustls-0.24)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-twox-hash" ,rust-twox-hash-1)
                      ("rust-url" ,rust-url-2)
                      ("rust-webpki" ,rust-webpki-0.22)
                      ("rust-webpki-roots" ,rust-webpki-roots-0.23))))
   (home-page "https://github.com/blackbeam/mysql_async")
   (synopsis "Tokio based asynchronous MySql client library.")
   (description "Tokio based asynchronous @code{MySql} client library.")
   (license (list license:expat license:asl2.0))))

(define-public rust-typed-builder-0.10
  (package
   (name "rust-typed-builder")
   (version "0.10.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "typed-builder" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "036v5045xsc8akqbqm0npyxw9pvxwqiq9aix7cwpx4vvnqb1g1c9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/idanarye/rust-typed-builder")
   (synopsis "Compile-time type-checked builder derive")
   (description "Compile-time type-checked builder derive")
   (license (list license:expat license:asl2.0))))

(define-public rust-rustc-version-runtime-0.2
  (package
   (name "rust-rustc-version-runtime")
   (version "0.2.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rustc_version_runtime" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0bsq9419ax5c61jzc1fmz969qx0fq2qfann6j6zligqf4x9p26yk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-rustc-version" ,rust-rustc-version-0.2)
                      ("rust-rustc-version" ,rust-rustc-version-0.2)
                      ("rust-semver" ,rust-semver-0.9)
                      ("rust-semver" ,rust-semver-0.9))))
   (home-page "https://github.com/seppo0010/rustc-version-runtime-rs")
   (synopsis
    "A library for querying the version of the rustc compiler used in runtime")
   (description
    "This package provides a library for querying the version of the rustc compiler
used in runtime")
   (license license:expat)))

(define-public rust-openssl-probe-0.1
  (package
   (name "rust-openssl-probe")
   (version "0.1.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "openssl-probe" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1kq18qm48rvkwgcggfkqq6pm948190czqc94d6bm2sir5hq1l0gz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/alexcrichton/openssl-probe")
   (synopsis
    "Tool for helping to find SSL certificate locations on the system for OpenSSL
")
   (description
    "Tool for helping to find SSL certificate locations on the system for
@code{OpenSSL}")
   (license (list license:expat license:asl2.0))))

(define-public rust-mongocrypt-sys-0.1
  (package
   (name "rust-mongocrypt-sys")
   (version "0.1.2+1.8.0-alpha1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mongocrypt-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1abaqqpz4lcaxgn781ny3ni04c6ncvsdzqjzvrnrhqjknpjgn53a"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/mongodb/libmongocrypt-rust")
   (synopsis "FFI bindings to libmongocrypt")
   (description "FFI bindings to libmongocrypt")
   (license license:asl2.0)))

(define-public rust-mongocrypt-0.1
  (package
   (name "rust-mongocrypt")
   (version "0.1.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mongocrypt" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rvxhac1b62s31gk0j5rij0pb8dv8skzzdnxn97dvyp6qvsii9g4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bson" ,rust-bson-2)
                      ("rust-mongocrypt-sys" ,rust-mongocrypt-sys-0.1)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/mongodb/libmongocrypt-rust")
   (synopsis "Rust-idiomatic wrapper around mongocrypt-sys")
   (description "Rust-idiomatic wrapper around mongocrypt-sys")
   (license license:asl2.0)))

(define-public rust-darling-macro-0.13
  (package
   (name "rust-darling-macro")
   (version "0.13.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "darling_macro" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0d8q8ibmsb1yzby6vwgh2wx892jqqfv9clwhpm19rprvz1wjd5ww"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-darling-core" ,rust-darling-core-0.13)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/TedDriggs/darling")
   (synopsis
    "Internal support for a proc-macro library for reading attributes into structs when
implementing custom derives. Use https://crates.io/crates/darling in your code.
")
   (description
    "Internal support for a proc-macro library for reading attributes into structs
when implementing custom derives.  Use https://crates.io/crates/darling in your
code.")
   (license license:expat)))

(define-public rust-darling-core-0.13
  (package
   (name "rust-darling-core")
   (version "0.13.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "darling_core" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "046n83f9jpszlngpjxkqi39ayzxf5a35q673c69jr1dn0ylnb7c5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-fnv" ,rust-fnv-1)
                      ("rust-ident-case" ,rust-ident-case-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-strsim" ,rust-strsim-0.10)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/TedDriggs/darling")
   (synopsis
    "Helper crate for proc-macro library for reading attributes into structs when
implementing custom derives. Use https://crates.io/crates/darling in your code.
")
   (description
    "Helper crate for proc-macro library for reading attributes into structs when
implementing custom derives.  Use https://crates.io/crates/darling in your code.")
   (license license:expat)))

(define-public rust-darling-0.13
  (package
   (name "rust-darling")
   (version "0.13.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "darling" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0g25pad4mhq7315mw9n4wpg8j3mwyhwvr541kgdl0aar1j2ra7d0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-darling-core" ,rust-darling-core-0.13)
                      ("rust-darling-macro" ,rust-darling-macro-0.13))))
   (home-page "https://github.com/TedDriggs/darling")
   (synopsis "A proc-macro library for reading attributes into structs when
implementing custom derives.
")
   (description
    "This package provides a proc-macro library for reading attributes into structs
when implementing custom derives.")
   (license license:expat)))

(define-public rust-serde-with-macros-1
  (package
   (name "rust-serde-with-macros")
   (version "1.5.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_with_macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "10l0rsy0k61nvpn1brcfvzp8yfnvsqdgh6zdwp03qf85dzndd0p1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-darling" ,rust-darling-0.13)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/jonasbb/serde_with/")
   (synopsis "proc-macro library for serde_with")
   (description "proc-macro library for serde_with")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-with-1
  (package
   (name "rust-serde-with")
   (version "1.14.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_with" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zqjlc9ypm8y0r9bcgdhh62zcdn2yzfxh31dsbn01gshkq35m2v7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.13)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-doc-comment" ,rust-doc-comment-0.3)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-indexmap" ,rust-indexmap-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-serde-with-macros" ,rust-serde-with-macros-1)
                      ("rust-time" ,rust-time-0.3))))
   (home-page "https://github.com/jonasbb/serde_with/")
   (synopsis "Custom de/serialization functions for Rust's serde")
   (description "Custom de/serialization functions for Rust's serde")
   (license (list license:expat license:asl2.0))))

(define-public rust-bson-2
  (package
   (name "rust-bson")
   (version "2.10.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "bson" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ck6w2rc2340j2sl1cxs9nf8pn51fvilf2giawlxxh2c0y7b6hsd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                      ("rust-base64" ,rust-base64-0.13)
                      ("rust-bitvec" ,rust-bitvec-1)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-bytes" ,rust-serde-bytes-0.11)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-serde-with" ,rust-serde-with-1)
                      ("rust-serde-with" ,rust-serde-with-3)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-uuid" ,rust-uuid-1)
                      ("rust-uuid" ,rust-uuid-0.8))))
   (home-page "https://github.com/mongodb/bson-rust")
   (synopsis "Encoding and decoding support for BSON in Rust")
   (description "Encoding and decoding support for BSON in Rust")
   (license license:expat)))

(define-public rust-rustls-pemfile-0.3
  (package
   (name "rust-rustls-pemfile")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rustls-pemfile" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0q3k136sna6yhq98js7n7lf341w47j6gxzin2lfncz1ajxinvs0y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.13))))
   (home-page "https://github.com/rustls/pemfile")
   (synopsis "Basic .pem file parser for keys and certificates")
   (description "Basic .pem file parser for keys and certificates")
   (license (list license:asl2.0 license:isc license:expat))))

(define-public rust-enum-as-inner-0.4
  (package
   (name "rust-enum-as-inner")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "enum-as-inner" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0wwvjmy2bvqqc3pyylsmlqpkswxrzsg40xva7z27szva8j0svk91"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-heck" ,rust-heck-0.4)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/bluejekyll/enum-as-inner")
   (synopsis
    "A proc-macro for deriving inner field accessor functions on enums.
")
   (description
    "This package provides a proc-macro for deriving inner field accessor functions
on enums.")
   (license (list license:expat license:asl2.0))))

(define-public rust-trust-dns-proto-0.21
  (package
   (name "rust-trust-dns-proto")
   (version "0.21.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "trust-dns-proto" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0p95ig8dfp30ga6gz01m683zy33abbna0givpgac6xwqym0g4ccw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-data-encoding" ,rust-data-encoding-2)
                      ("rust-enum-as-inner" ,rust-enum-as-inner-0.4)
                      ("rust-futures-channel" ,rust-futures-channel-0.3)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-h2" ,rust-h2-0.3)
                      ("rust-http" ,rust-http-0.2)
                      ("rust-idna" ,rust-idna-0.2)
                      ("rust-ipnet" ,rust-ipnet-2)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-native-tls" ,rust-native-tls-0.2)
                      ("rust-openssl" ,rust-openssl-0.10)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-ring" ,rust-ring-0.16)
                      ("rust-rustls" ,rust-rustls-0.20)
                      ("rust-rustls-pemfile" ,rust-rustls-pemfile-0.3)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-socket2" ,rust-socket2-0.4)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tinyvec" ,rust-tinyvec-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                      ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
                      ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                      ("rust-url" ,rust-url-2)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                      ("rust-webpki" ,rust-webpki-0.22)
                      ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
   (home-page "https://trust-dns.org/")
   (synopsis
    "Trust-DNS is a safe and secure DNS library. This is the foundational DNS protocol library for all Trust-DNS projects.
")
   (description
    "Trust-DNS is a safe and secure DNS library.  This is the foundational DNS
protocol library for all Trust-DNS projects.")
   (license (list license:expat license:asl2.0))))

(define-public rust-trust-dns-resolver-0.21
  (package
   (name "rust-trust-dns-resolver")
   (version "0.21.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "trust-dns-resolver" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0n6m9yvhaip8dml5247d6qqdzf8bcrn4rvzwr685clc4xb175fp4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-ipconfig" ,rust-ipconfig-0.3)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-lru-cache" ,rust-lru-cache-0.1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-resolv-conf" ,rust-resolv-conf-0.7)
                      ("rust-rustls" ,rust-rustls-0.20)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-native-tls" ,rust-tokio-native-tls-0.3)
                      ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
                      ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                      ("rust-trust-dns-proto" ,rust-trust-dns-proto-0.21)
                      ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
   (home-page "https://trust-dns.org/")
   (synopsis
    "Trust-DNS is a safe and secure DNS library. This Resolver library  uses the Client library to perform all DNS queries. The Resolver is intended to be a high-level library for any DNS record resolution see Resolver and AsyncResolver for supported resolution types. The Client can be used for other queries.
")
   (description
    "Trust-DNS is a safe and secure DNS library.  This Resolver library uses the
Client library to perform all DNS queries.  The Resolver is intended to be a
high-level library for any DNS record resolution see Resolver and
@code{AsyncResolver} for supported resolution types.  The Client can be used for
other queries.")
   (license (list license:expat license:asl2.0))))

(define-public rust-async-std-resolver-0.21
  (package
   (name "rust-async-std-resolver")
   (version "0.21.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-std-resolver" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1n4sw1hanhaxw3yby6b5bfjlwvlfl91v42iih5ck5qrv4158lbqg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-pin-utils" ,rust-pin-utils-0.1)
                      ("rust-socket2" ,rust-socket2-0.4)
                      ("rust-trust-dns-resolver" ,rust-trust-dns-resolver-0.21))))
   (home-page "https://hickory-dns.org/")
   (synopsis
    "Hickory DNS is a safe and secure DNS library, for async-std. This Resolver library uses the hickory-proto library to perform all DNS queries. The Resolver is intended to be a high-level library for any DNS record resolution see Resolver and AsyncResolver for supported resolution types. The Client can be used for other queries.
")
   (description
    "Hickory DNS is a safe and secure DNS library, for async-std.  This Resolver
library uses the hickory-proto library to perform all DNS queries.  The Resolver
is intended to be a high-level library for any DNS record resolution see
Resolver and @code{AsyncResolver} for supported resolution types.  The Client
can be used for other queries.")
   (license (list license:expat license:asl2.0))))

(define-public rust-mongodb-2
  (package
   (name "rust-mongodb")
   (version "2.8.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mongodb" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1w9583s0fv62z9id502nisqrp2hzxgkyz1crpi4rnf3j3g5nl87g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-executor" ,rust-async-executor-1)
                      ("rust-async-std" ,rust-async-std-1)
                      ("rust-async-std-resolver" ,rust-async-std-resolver-0.21)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-base64" ,rust-base64-0.13)
                      ("rust-bitflags" ,rust-bitflags-1)
                      ("rust-bson" ,rust-bson-2)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-derivative" ,rust-derivative-2)
                      ("rust-derive-more" ,rust-derive-more-0.99)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-executor" ,rust-futures-executor-0.3)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-hmac" ,rust-hmac-0.12)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-md-5" ,rust-md-5-0.10)
                      ("rust-mongocrypt" ,rust-mongocrypt-0.1)
                      ("rust-num-cpus" ,rust-num-cpus-1)
                      ("rust-openssl" ,rust-openssl-0.10)
                      ("rust-openssl-probe" ,rust-openssl-probe-0.1)
                      ("rust-pbkdf2" ,rust-pbkdf2-0.11)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-rayon" ,rust-rayon-1)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-rustc-version-runtime" ,rust-rustc-version-runtime-0.2)
                      ("rust-rustls" ,rust-rustls-0.21)
                      ("rust-rustls-pemfile" ,rust-rustls-pemfile-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-bytes" ,rust-serde-bytes-0.11)
                      ("rust-serde-with" ,rust-serde-with-1)
                      ("rust-sha-1" ,rust-sha-1-0.10)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-snap" ,rust-snap-1)
                      ("rust-socket2" ,rust-socket2-0.4)
                      ("rust-stringprep" ,rust-stringprep-0.1)
                      ("rust-strsim" ,rust-strsim-0.10)
                      ("rust-take-mut" ,rust-take-mut-0.2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
                      ("rust-tokio-rustls" ,rust-tokio-rustls-0.24)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-trust-dns-proto" ,rust-trust-dns-proto-0.21)
                      ("rust-trust-dns-resolver" ,rust-trust-dns-resolver-0.21)
                      ("rust-typed-builder" ,rust-typed-builder-0.10)
                      ("rust-uuid" ,rust-uuid-1)
                      ("rust-webpki-roots" ,rust-webpki-roots-0.25)
                      ("rust-zstd" ,rust-zstd-0.11))))
   (home-page "https://www.mongodb.com/docs/drivers/rust/")
   (synopsis "The official MongoDB driver for Rust")
   (description "The official @code{MongoDB} driver for Rust")
   (license license:asl2.0)))

(define-public rust-event-listener-5
  (package
   (name "rust-event-listener")
   (version "5.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "event-listener" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "091a6bgxzjnycqa10l2sqwzzy0j9vpw7a1w0nbglqlqkraw496bd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-concurrent-queue" ,rust-concurrent-queue-2)
                      ("rust-loom" ,rust-loom-0.7)
                      ("rust-parking" ,rust-parking-2)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-portable-atomic" ,rust-portable-atomic-1)
                      ("rust-portable-atomic-util" ,rust-portable-atomic-util-0.1))))
   (home-page "https://github.com/smol-rs/event-listener")
   (synopsis "Notify async tasks or threads")
   (description "Notify async tasks or threads")
   (license (list license:asl2.0 license:expat))))

(define-public rust-moka-0.12
  (package
   (name "rust-moka")
   (version "0.12.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "moka" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "020x0816cr4415xhiphvg1cdrw7a4sdjds0dni1xfqf5dml8h3cy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-lock" ,rust-async-lock-3)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                      ("rust-crossbeam-epoch" ,rust-crossbeam-epoch-0.9)
                      ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                      ("rust-event-listener" ,rust-event-listener-5)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-quanta" ,rust-quanta-0.12)
                      ("rust-rustc-version" ,rust-rustc-version-0.4)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-tagptr" ,rust-tagptr-0.2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-triomphe" ,rust-triomphe-0.1)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://github.com/moka-rs/moka")
   (synopsis "A fast and concurrent cache library inspired by Java Caffeine")
   (description
    "This package provides a fast and concurrent cache library inspired by Java
Caffeine")
   (license (list license:expat license:asl2.0))))

(define-public rust-rtrb-0.2
  (package
   (name "rust-rtrb")
   (version "0.2.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rtrb" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "02cih5wqlmkci9sb38faq43xcdmpy1q0y510lck27bsg23fh9rwr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cache-padded" ,rust-cache-padded-1))))
   (home-page "https://github.com/mgeier/rtrb")
   (synopsis "A realtime-safe single-producer single-consumer ring buffer")
   (description
    "This package provides a realtime-safe single-producer single-consumer ring
buffer")
   (license (list license:expat license:asl2.0))))

(define-public rust-web-time-1
  (package
   (name "rust-web-time")
   (version "1.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "web-time" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1fx05yqx83dhx628wb70fyy10yjfq1jpl20qfqhdkymi13rq0ras"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
   (home-page "https://github.com/daxpedda/web-time")
   (synopsis "Drop-in replacement for std::time for Wasm in browsers")
   (description "Drop-in replacement for std::time for Wasm in browsers")
   (license (list license:expat license:asl2.0))))

(define-public rust-minstant-0.1
  (package
   (name "rust-minstant")
   (version "0.1.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "minstant" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1nvq425dd74lqn0an7hx1jakqbl9c97krk5w8r8aqigiab3vbf8z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-coarsetime" ,rust-coarsetime-0.1)
                      ("rust-ctor" ,rust-ctor-0.1)
                      ("rust-web-time" ,rust-web-time-1))))
   (home-page "https://github.com/tikv/minstant")
   (synopsis
    "A drop-in replacement for `std::time::Instant` that measures time with high performance and high accuracy powered by TSC")
   (description
    "This package provides a drop-in replacement for `std::time::Instant` that
measures time with high performance and high accuracy powered by TSC")
   (license license:expat)))

(define-public rust-minitrace-macro-0.6
  (package
   (name "rust-minitrace-macro")
   (version "0.6.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "minitrace-macro" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1c3lrz959fh6mvg1m0kxy9qcpbnmr19gn42ryz3sidm5bmnakb1n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro-error" ,rust-proc-macro-error-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/tikv/minitrace-rust")
   (synopsis "Attribute procedural macro for minitrace-rust")
   (description "Attribute procedural macro for minitrace-rust")
   (license license:asl2.0)))

(define-public rust-minitrace-0.6
  (package
   (name "rust-minitrace")
   (version "0.6.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "minitrace" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19smszraqcniisws7r5jkf6npcn34fhf5zgfmcw53hvybxv1vpy2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures" ,rust-futures-0.3)
                      ("rust-minitrace-macro" ,rust-minitrace-macro-0.6)
                      ("rust-minstant" ,rust-minstant-0.1)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-rtrb" ,rust-rtrb-0.2))))
   (home-page "https://github.com/tikv/minitrace-rust")
   (synopsis "A high-performance timeline tracing library for Rust")
   (description
    "This package provides a high-performance timeline tracing library for Rust")
   (license license:asl2.0)))

(define-public rust-tagptr-0.2
  (package
   (name "rust-tagptr")
   (version "0.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tagptr" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "05r4mwvlsclx1ayj65hpzjv3dn4wpi8j4xm695vydccf9k7r683v"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/oliver-giersch/tagptr.git")
   (synopsis "Strongly typed atomic and non-atomic tagged pointers")
   (description "Strongly typed atomic and non-atomic tagged pointers")
   (license (list license:expat license:asl2.0))))

(define-public rust-mini-moka-0.10
  (package
   (name "rust-mini-moka")
   (version "0.10.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mini-moka" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00yqhslppnrl2a54rrrp03xb65d2knbb1s5yvs3g6qgjcnmxy9f3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                      ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                      ("rust-dashmap" ,rust-dashmap-5)
                      ("rust-skeptic" ,rust-skeptic-0.13)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-tagptr" ,rust-tagptr-0.2)
                      ("rust-triomphe" ,rust-triomphe-0.1))))
   (home-page "https://github.com/moka-rs/mini-moka")
   (synopsis "A lighter edition of Moka, a fast and concurrent cache library")
   (description
    "This package provides a lighter edition of Moka, a fast and concurrent cache
library")
   (license (list license:expat license:asl2.0))))

(define-public rust-portable-atomic-0.3
  (package
   (name "rust-portable-atomic")
   (version "0.3.20")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "portable-atomic" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0gkmm12f661hk96gc7vjc6phx2ih5icwf3h9ddrga1pn3p9na0g3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-portable-atomic" ,rust-portable-atomic-1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/taiki-e/portable-atomic")
   (synopsis
    "Portable atomic types including support for 128-bit atomics, atomic float, etc.
")
   (description
    "Portable atomic types including support for 128-bit atomics, atomic float, etc.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-metrics-macros-0.6
  (package
   (name "rust-metrics-macros")
   (version "0.6.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "metrics-macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1wr3ig8nx6qz1cpksyd783d4aykmwiam9ryz8yl4lflzpp78w7vk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/metrics-rs/metrics")
   (synopsis "Macros for the metrics crate.")
   (description "Macros for the metrics crate.")
   (license license:expat)))

(define-public rust-metrics-0.20
  (package
   (name "rust-metrics")
   (version "0.20.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "metrics" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0jd8nj9w1p6ci910py4szri0zmg3bsx3z90rnmrpz2f6rr9qd6vv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ahash" ,rust-ahash-0.7)
                      ("rust-metrics-macros" ,rust-metrics-macros-0.6)
                      ("rust-portable-atomic" ,rust-portable-atomic-0.3))))
   (home-page "https://github.com/metrics-rs/metrics")
   (synopsis "A lightweight metrics facade.")
   (description "This package provides a lightweight metrics facade.")
   (license license:expat)))

(define-public rust-panic-message-0.3
  (package
   (name "rust-panic-message")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "panic-message" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ba75hapwknxljlcw2719l9zk8111hk1d0ky64ybwk5xizym4kiq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/guswynn/panic-message")
   (synopsis "Get a panic message from a panic payload")
   (description "Get a panic message from a panic payload")
   (license (list license:expat license:asl2.0))))

(define-public rust-naive-timer-0.2
  (package
   (name "rust-naive-timer")
   (version "0.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "naive-timer" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1v9zhizqmylfyk0d1ynqm5gc3hv6cq59ad94rymw5w7bvvbhljh3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/rcore-os/naive-timer")
   (synopsis "A minimal naive timer for embedded (no_std) platforms.")
   (description
    "This package provides a minimal naive timer for embedded (no_std) platforms.")
   (license license:expat)))

(define-public rust-madsim-macros-0.2
  (package
   (name "rust-madsim-macros")
   (version "0.2.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "madsim-macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1qa6r46r34qavms75wab74affj453s98v0n329m84j0sggllilpk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-darling" ,rust-darling-0.14)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/madsim-rs/madsim")
   (synopsis "Madsim's proc-macro.")
   (description "Madsim's proc-macro.")
   (license license:asl2.0)))

(define-public rust-ucx1-sys-0.1
  (package
   (name "rust-ucx1-sys")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ucx1-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ispynhd6bf4s4wqr6rpjp2qx7cpchn7h9wr01m5cspnixzp11mr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.59))))
   (home-page "https://github.com/madsys-dev/async-ucx")
   (synopsis "Rust FFI bindings to UCX.")
   (description "Rust FFI bindings to UCX.")
   (license license:expat)))

(define-public rust-async-ucx-0.1
  (package
   (name "rust-async-ucx")
   (version "0.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-ucx" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1vbrwg4l5aahf7ady52vw8kwkfa55z6kims0as2hkbc107f0g1hw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-crossbeam" ,rust-crossbeam-0.8)
                      ("rust-derivative" ,rust-derivative-2)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-1)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-socket2" ,rust-socket2-0.4)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-ucx1-sys" ,rust-ucx1-sys-0.1))))
   (home-page "https://github.com/madsys-dev/async-ucx")
   (synopsis "Asynchronous Rust bindings to UCX.")
   (description "Asynchronous Rust bindings to UCX.")
   (license license:expat)))

(define-public rust-madsim-0.2
  (package
   (name "rust-madsim")
   (version "0.2.27")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "madsim" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0z53i4887bhsn7i7k6bxajd0da0ddi161jrw7s7350bbva2q7mf4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                      ("rust-async-channel" ,rust-async-channel-2)
                      ("rust-async-stream" ,rust-async-stream-0.3)
                      ("rust-async-task" ,rust-async-task-4)
                      ("rust-async-ucx" ,rust-async-ucx-0.1)
                      ("rust-bincode" ,rust-bincode-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-downcast-rs" ,rust-downcast-rs-1)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-madsim-macros" ,rust-madsim-macros-0.2)
                      ("rust-naive-timer" ,rust-naive-timer-0.2)
                      ("rust-panic-message" ,rust-panic-message-0.3)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-rand-xoshiro" ,rust-rand-xoshiro-0.6)
                      ("rust-rustversion" ,rust-rustversion-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-spin" ,rust-spin-0.9)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-toml" ,rust-toml-0.8)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-tracing-subscriber" ,rust-tracing-subscriber-0.3))))
   (home-page "https://github.com/madsim-rs/madsim")
   (synopsis "Deterministic Simulator for distributed systems.")
   (description "Deterministic Simulator for distributed systems.")
   (license license:asl2.0)))

(define-public rust-hrana-client-proto-0.2
  (package
   (name "rust-hrana-client-proto")
   (version "0.2.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hrana-client-proto" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0cz5ypcyffkv2kccd21pgfmqzrwpd8j4bwk41vb3znl9w90lwszi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-base64" ,rust-base64-0.21)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1))))
   (home-page "https://github.com/libsql/hrana-client-rs")
   (synopsis "Hrana client protocol for libSQL and sqld")
   (description "Hrana client protocol for @code{libSQL} and sqld")
   (license license:asl2.0)))

(define-public rust-hdfs-sys-0.3
  (package
   (name "rust-hdfs-sys")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hdfs-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1js9ki2as456whdwk4v51xd74cisjqzljajdnhk1mmd2zg7dbqik"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1)
                      ("rust-java-locator" ,rust-java-locator-0.1))))
   (home-page "https://github.com/Xuanwo/hdrs")
   (synopsis "Bindings to HDFS Native C API")
   (description "Bindings to HDFS Native C API")
   (license license:asl2.0)))

(define-public rust-hdrs-0.3
  (package
   (name "rust-hdrs")
   (version "0.3.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hdrs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "13c7qz5wwl9gsv3n7kmqazqwamf3br60890zmpychpgy7dljmi7p"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-blocking" ,rust-blocking-1)
                      ("rust-errno" ,rust-errno-0.3)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-hdfs-sys" ,rust-hdfs-sys-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-log" ,rust-log-0.4))))
   (home-page "https://github.com/Xuanwo/hdrs")
   (synopsis "Rust native client to hdfs")
   (description "Rust native client to hdfs")
   (license license:asl2.0)))

(define-public rust-xmlparser-0.13
  (package
   (name "rust-xmlparser")
   (version "0.13.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "xmlparser" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1r796g21c70p983ax0j6rmhzmalg4rhx61mvd4farxdhfyvy1zk6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/RazrFalcon/xmlparser")
   (synopsis "Pull-based, zero-allocation XML parser.")
   (description "Pull-based, zero-allocation XML parser.")
   (license (list license:expat license:asl2.0))))

(define-public rust-roxmltree-0.18
  (package
   (name "rust-roxmltree")
   (version "0.18.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "roxmltree" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00mkd2xyrxm8ap39sxpkhzdzfn2m98q3zicf6wd2f6yfa7il08w6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-xmlparser" ,rust-xmlparser-0.13))))
   (home-page "https://github.com/RazrFalcon/roxmltree")
   (synopsis "Represent an XML as a read-only tree.")
   (description "Represent an XML as a read-only tree.")
   (license (list license:expat license:asl2.0))))

(define-public rust-autotools-0.2
  (package
   (name "rust-autotools")
   (version "0.2.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "autotools" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1kwmqzdpgmy50dr8pzx0029f5iszrma826ji93fw03qvqhkib57g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1))))
   (home-page "https://github.com/lu-zero/autotools-rs")
   (synopsis
    "A build dependency to build native libraries that use configure&make-style build systems
")
   (description
    "This package provides a build dependency to build native libraries that use
configure&make-style build systems")
   (license license:expat)))

(define-public rust-protobuf-src-1
  (package
   (name "rust-protobuf-src")
   (version "1.1.0+21.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "protobuf-src" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1hg3w2799fdlrr2wjf7i9g8ybzy0jgxlcdmrhgxwcg7bp998ib67"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-autotools" ,rust-autotools-0.2))))
   (home-page "https://github.com/MaterializeInc/rust-protobuf-native")
   (synopsis "Build system integration for libprotobuf.")
   (description "Build system integration for libprotobuf.")
   (license license:asl2.0)))

(define-public rust-prost-build-0.11
  (package
   (name "rust-prost-build")
   (version "0.11.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "prost-build" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0w5jx97q96ydhkg67wx3lb11kfy8195c56g0476glzws5iak758i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-heck" ,rust-heck-0.4)
                      ("rust-itertools" ,rust-itertools-0.10)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-multimap" ,rust-multimap-0.8)
                      ("rust-petgraph" ,rust-petgraph-0.6)
                      ("rust-prettyplease" ,rust-prettyplease-0.1)
                      ("rust-prost" ,rust-prost-0.11)
                      ("rust-prost-types" ,rust-prost-types-0.11)
                      ("rust-pulldown-cmark" ,rust-pulldown-cmark-0.9)
                      ("rust-pulldown-cmark-to-cmark" ,rust-pulldown-cmark-to-cmark-10)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-syn" ,rust-syn-1)
                      ("rust-tempfile" ,rust-tempfile-3)
                      ("rust-which" ,rust-which-4))))
   (home-page "https://github.com/tokio-rs/prost")
   (synopsis "A Protocol Buffers implementation for the Rust Language.")
   (description
    "This package provides a Protocol Buffers implementation for the Rust Language.")
   (license license:asl2.0)))

(define-public rust-libgssapi-sys-0.3
  (package
   (name "rust-libgssapi-sys")
   (version "0.3.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libgssapi-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0wjkahghah0647s0zp0d3y1hjllvb36bp78ip6qm7v3lqxqrlzdm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.69)
                      ("rust-pkg-config" ,rust-pkg-config-0.3))))
   (home-page "https://github.com/estokes/libgssapi")
   (synopsis "A low level binding to gssapi")
   (description "This package provides a low level binding to gssapi")
   (license license:expat)))

(define-public rust-libgssapi-0.6
  (package
   (name "rust-libgssapi")
   (version "0.6.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libgssapi" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0pqfm5hv5wfk4f33dkb3yl99f4piqj8p8rpa8qm29z5ygkvvgkwx"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-libgssapi-sys" ,rust-libgssapi-sys-0.3))))
   (home-page "https://github.com/estokes/libgssapi")
   (synopsis "A safe binding to gssapi")
   (description "This package provides a safe binding to gssapi")
   (license license:expat)))

(define-public rust-gsasl-sys-0.2
  (package
   (name "rust-gsasl-sys")
   (version "0.2.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gsasl-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1gaxpnv1s2kms3rl1vx9w8jawxbsj2lnnsjc3dcn3rh7c0h7ydyd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.55))))
   (home-page "https://github.com/dequbed/rsasl/tree/1.X.X/gsasl-sys")
   (synopsis "Raw FFI wrapper for GNU sasl (gsasl)")
   (description "Raw FFI wrapper for GNU sasl (gsasl)")
   (license license:expat)))

(define-public rust-g2poly-1
  (package
   (name "rust-g2poly")
   (version "1.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "g2poly" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "04lfc0j6169ljcfh5837ra3izmlcwnzw1c8l5km071ika3kqcsmg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/WanzenBug/g2p")
   (synopsis "Primitive implementation of polynomials over the field GF(2)
")
   (description
    "Primitive implementation of polynomials over the field GF(2)")
   (license (list license:expat license:asl2.0))))

(define-public rust-g2gen-1
  (package
   (name "rust-g2gen")
   (version "1.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "g2gen" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "03l243pnj9pabd0pi0jcf4fyrxxhddx8ixv31gchs9gwn8jpcb7w"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-g2poly" ,rust-g2poly-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/WanzenBug/g2p")
   (synopsis
    "A macro to create types that implement fast finite field arithmetic.
")
   (description
    "This package provides a macro to create types that implement fast finite field
arithmetic.")
   (license (list license:expat license:asl2.0))))

(define-public rust-g2p-1
  (package
   (name "rust-g2p")
   (version "1.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "g2p" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "17jip1izln1k6p694yns1qzapv89gdyzmx59fmvhbnnjqfyxjdpw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-g2gen" ,rust-g2gen-1)
                      ("rust-g2poly" ,rust-g2poly-1))))
   (home-page "https://github.com/WanzenBug/g2p")
   (synopsis
    "A crate to create types that implement fast finite field arithmetic.
")
   (description
    "This package provides a crate to create types that implement fast finite field
arithmetic.")
   (license (list license:expat license:asl2.0))))

(define-public rust-hdfs-native-0.6
  (package
   (name "rust-hdfs-native")
   (version "0.6.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hdfs-native" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rk0kj74al7yikjyipf14fs9rn3s5pb5pj7kxi9f58xh2xg4s2i7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.21)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-crc" ,rust-crc-3)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-g2p" ,rust-g2p-1)
                      ("rust-gsasl-sys" ,rust-gsasl-sys-0.2)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libgssapi" ,rust-libgssapi-0.6)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-prost" ,rust-prost-0.11)
                      ("rust-prost-build" ,rust-prost-build-0.11)
                      ("rust-prost-types" ,rust-prost-types-0.11)
                      ("rust-protobuf-src" ,rust-protobuf-src-1)
                      ("rust-roxmltree" ,rust-roxmltree-0.18)
                      ("rust-socket2" ,rust-socket2-0.5)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-url" ,rust-url-2)
                      ("rust-users" ,rust-users-0.11)
                      ("rust-uuid" ,rust-uuid-1)
                      ("rust-which" ,rust-which-4))))
   (home-page "https://github.com/Kimahriman/hdfs-native")
   (synopsis "Native HDFS client implementation in Rust")
   (description "Native HDFS client implementation in Rust")
   (license license:asl2.0)))

(define-public rust-spinning-top-0.3
  (package
   (name "rust-spinning-top")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "spinning_top" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "001kjbiz1gg111rsqxc4pq9a1izx7wshkk38f69h1dbgf4fjsvfr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-lock-api" ,rust-lock-api-0.4))))
   (home-page "https://github.com/rust-osdev/spinning_top")
   (synopsis
    "A simple spinlock crate based on the abstractions provided by `lock_api`.")
   (description
    "This package provides a simple spinlock crate based on the abstractions provided
by `lock_api`.")
   (license (list license:expat license:asl2.0))))

(define-public rust-minimad-0.12
  (package
   (name "rust-minimad")
   (version "0.12.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "minimad" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1vzglb05pqghc8l6d10vqkal0nqhgkh94jawwlhd1r14952kdc9q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-once-cell" ,rust-once-cell-1))))
   (home-page "https://github.com/Canop/minimad")
   (synopsis "light Markdown parser")
   (description "light Markdown parser")
   (license license:expat)))

(define-public rust-coolor-0.5
  (package
   (name "rust-coolor")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "coolor" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1bdaqnbpgnr19ma0wi0bkf9smz938ffq0753c662znd0bj07lkdg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-crossterm" ,rust-crossterm-0.23))))
   (home-page "https://github.com/Canop/coolor")
   (synopsis "conversion between color formats")
   (description "conversion between color formats")
   (license license:expat)))

(define-public rust-termimad-0.23
  (package
   (name "rust-termimad")
   (version "0.23.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "termimad" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00i29vky1fard6vm5hdbmyc6iv63igp8v59iwjkwslpwk4qqhcif"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-coolor" ,rust-coolor-0.5)
                      ("rust-crossbeam" ,rust-crossbeam-0.8)
                      ("rust-crossterm" ,rust-crossterm-0.23)
                      ("rust-minimad" ,rust-minimad-0.12)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unicode-width" ,rust-unicode-width-0.1))))
   (home-page "https://github.com/Canop/termimad")
   (synopsis "Markdown Renderer for the Terminal")
   (description "Markdown Renderer for the Terminal")
   (license license:expat)))

(define-public rust-raw-cpuid-11
  (package
   (name "rust-raw-cpuid")
   (version "11.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "raw-cpuid" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1wfy57a5qd8yswyw8cqzvv1v9nw7wqh1lygla52w8hldcg2ag1lx"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-clap" ,rust-clap-4)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-termimad" ,rust-termimad-0.23))))
   (home-page "https://github.com/gz/rust-cpuid")
   (synopsis
    "A library to parse the x86 CPUID instruction, written in rust with no external dependencies. The implementation closely resembles the Intel CPUID manual description. The library does only depend on libcore.")
   (description
    "This package provides a library to parse the x86 CPUID instruction, written in
rust with no external dependencies.  The implementation closely resembles the
Intel CPUID manual description.  The library does only depend on libcore.")
   (license license:expat)))

(define-public rust-prost-types-0.11
  (package
   (name "rust-prost-types")
   (version "0.11.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "prost-types" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "04ryk38sqkp2nf4dgdqdfbgn6zwwvjraw6hqq6d9a6088shj4di1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-prost" ,rust-prost-0.11))))
   (home-page "https://github.com/tokio-rs/prost")
   (synopsis "A Protocol Buffers implementation for the Rust Language.")
   (description
    "This package provides a Protocol Buffers implementation for the Rust Language.")
   (license license:asl2.0)))

(define-public rust-quanta-0.12
  (package
   (name "rust-quanta")
   (version "0.12.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "quanta" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19cds3yg3ri0wrypn7b3j2x8qf1w9rkw5yl4nah2i4k1fyj6flcf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-prost-types" ,rust-prost-types-0.11)
                      ("rust-raw-cpuid" ,rust-raw-cpuid-11)
                      ("rust-wasi" ,rust-wasi-0.11)
                      ("rust-web-sys" ,rust-web-sys-0.3)
                      ("rust-winapi" ,rust-winapi-0.3))))
   (home-page "https://github.com/metrics-rs/quanta")
   (synopsis "high-speed timing library")
   (description "high-speed timing library")
   (license license:expat)))

(define-public rust-nonzero-ext-0.3
  (package
   (name "rust-nonzero-ext")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "nonzero_ext" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "08fghyinb07xwhbj7vwvlhg45g5cvhvld2min25njidir12rdgrq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/antifuchs/nonzero_ext")
   (synopsis "Extensions and additional traits for non-zero integer types")
   (description "Extensions and additional traits for non-zero integer types")
   (license license:asl2.0)))

(define-public rust-governor-0.6
  (package
   (name "rust-governor")
   (version "0.6.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "governor" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0yw66yb1rfc7np23n9af9sb8kbhv3jnhvg3an1rsydbbxr1gb9v8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-dashmap" ,rust-dashmap-5)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-futures-timer" ,rust-futures-timer-3)
                      ("rust-no-std-compat" ,rust-no-std-compat-0.4)
                      ("rust-nonzero-ext" ,rust-nonzero-ext-0.3)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-portable-atomic" ,rust-portable-atomic-1)
                      ("rust-quanta" ,rust-quanta-0.12)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-spinning-top" ,rust-spinning-top-0.3))))
   (home-page "https://github.com/boinkor-net/governor")
   (synopsis "A rate-limiting implementation in Rust")
   (description
    "This package provides a rate-limiting implementation in Rust")
   (license license:expat)))

(define-public rust-bindgen-0.65
  (package
   (name "rust-bindgen")
   (version "0.65.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "bindgen" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1i9wci1h3xnk8hi7cf06capgifnmpk9dd59zqznh6jcsdx37ppyg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-annotate-snippets" ,rust-annotate-snippets-0.9)
                      ("rust-bitflags" ,rust-bitflags-1)
                      ("rust-cexpr" ,rust-cexpr-0.6)
                      ("rust-clang-sys" ,rust-clang-sys-1)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-lazycell" ,rust-lazycell-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-peeking-take-while" ,rust-peeking-take-while-0.1)
                      ("rust-prettyplease" ,rust-prettyplease-0.2)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-rustc-hash" ,rust-rustc-hash-1)
                      ("rust-shlex" ,rust-shlex-1)
                      ("rust-syn" ,rust-syn-2)
                      ("rust-which" ,rust-which-4))))
   (home-page "https://rust-lang.github.io/rust-bindgen/")
   (synopsis
    "Automatically generates Rust FFI bindings to C and C++ libraries.")
   (description
    "Automatically generates Rust FFI bindings to C and C++ libraries.")
   (license license:bsd-3)))

(define-public rust-foundationdb-sys-0.8
  (package
   (name "rust-foundationdb-sys")
   (version "0.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "foundationdb-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0vr5hhr2rrsb6i284ps34wvx77siz7ipg348gdmjfg9rym2rbr4q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bindgen" ,rust-bindgen-0.65))))
   (home-page "https://github.com/foundationdb-rs/foundationdb-rs")
   (synopsis "Bindings to the C api for FoundationDB
")
   (description "Bindings to the C api for @code{FoundationDB}")
   (license (list license:expat license:asl2.0))))

(define-public rust-try-map-0.3
  (package
   (name "rust-try-map")
   (version "0.3.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "try_map" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "106mz6cxmgf5m34ww6h45g0ags2j92zc153xy4nbphdmgk82c5pv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/golddranks/try_map")
   (synopsis
    "`try_map` and `flip` methods for `Option`. These allow more ergonomic error handling when mapping functions that return `Result` over `Option`.")
   (description
    "`try_map` and `flip` methods for `Option`.  These allow more ergonomic error
handling when mapping functions that return `Result` over `Option`.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-foundationdb-macros-0.2
  (package
   (name "rust-foundationdb-macros")
   (version "0.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "foundationdb-macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "05kmh2blmv2apni2pmghk3yfvbl5dl6wrkfynhibhsmlx0pxbj43"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2)
                      ("rust-try-map" ,rust-try-map-0.3))))
   (home-page "https://github.com/foundationdb-rs/foundationdb-rs")
   (synopsis "Macro definitions used to maintain the FoundationDB's crate
")
   (description
    "Macro definitions used to maintain the @code{FoundationDB's} crate")
   (license (list license:expat license:asl2.0))))

(define-public rust-foundationdb-gen-0.8
  (package
   (name "rust-foundationdb-gen")
   (version "0.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "foundationdb-gen" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "021k1vckvslmr5fh5cfjkykf2q7ra9y89sxaf9iin10vy009f8v2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-xml-rs" ,rust-xml-rs-0.8))))
   (home-page "https://github.com/foundationdb-rs/foundationdb-rs")
   (synopsis "Binding generation helper for FoundationDB.
")
   (description "Binding generation helper for @code{FoundationDB}.")
   (license (list license:expat license:asl2.0))))

(define-public rust-foundationdb-0.8
  (package
   (name "rust-foundationdb")
   (version "0.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "foundationdb" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "022i60dsk659wjs0ih7wga6b40pw0ksz1v5fb3mh3wcqw4dzv5l6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-recursion" ,rust-async-recursion-1)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-foundationdb-gen" ,rust-foundationdb-gen-0.8)
                      ("rust-foundationdb-macros" ,rust-foundationdb-macros-0.2)
                      ("rust-foundationdb-sys" ,rust-foundationdb-sys-0.8)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-num-bigint" ,rust-num-bigint-0.4)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-bytes" ,rust-serde-bytes-0.11)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-static-assertions" ,rust-static-assertions-1)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://github.com/foundationdb-rs/foundationdb-rs")
   (synopsis "High level client bindings for FoundationDB.
")
   (description "High level client bindings for @code{FoundationDB}.")
   (license (list license:expat license:asl2.0))))

(define-public rust-visible-0.0.1
  (package
   (name "rust-visible")
   (version "0.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "visible" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0gp75mm95sabfpxwm6m1lrwviiiicihfa8n6g6yixz60smgh0i50"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-1))))
   (home-page "https://github.com/davidli2010/visible")
   (synopsis "Attributes to override the visibility of items.")
   (description "Attributes to override the visibility of items.")
   (license (list license:expat license:asl2.0))))

(define-public rust-linked-hash-set-0.1
  (package
   (name "rust-linked-hash-set")
   (version "0.1.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "linked_hash_set" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "124m7wiz9ah7ah58ckai413mzfglh3y1nz64qy1s676qlinnq627"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-linked-hash-map" ,rust-linked-hash-map-0.5)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/alexheretic/linked-hash-set")
   (synopsis "HashSet with insertion ordering")
   (description "@code{HashSet} with insertion ordering")
   (license license:asl2.0)))

(define-public rust-hyper-openssl-0.9
  (package
   (name "rust-hyper-openssl")
   (version "0.9.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hyper-openssl" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0av1dkf6r1fsb8zv2kabfcabpc7mivigs7f6qg8qb1biixx5vvnn"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-http" ,rust-http-0.2)
                      ("rust-hyper" ,rust-hyper-0.14)
                      ("rust-linked-hash-set" ,rust-linked-hash-set-0.1)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-openssl" ,rust-openssl-0.10)
                      ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-openssl" ,rust-tokio-openssl-0.6)
                      ("rust-tower-layer" ,rust-tower-layer-0.3))))
   (home-page "https://github.com/sfackler/hyper-openssl")
   (synopsis "Hyper TLS support via OpenSSL")
   (description "Hyper TLS support via @code{OpenSSL}")
   (license (list license:expat license:asl2.0))))

(define-public rust-etcd-client-0.12
  (package
   (name "rust-etcd-client")
   (version "0.12.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "etcd-client" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0pkiyn0ki8zm50vfclywfqdd17zlb607iksddyp8k34fjbrrgrja"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-http" ,rust-http-0.2)
                      ("rust-hyper" ,rust-hyper-0.14)
                      ("rust-hyper-openssl" ,rust-hyper-openssl-0.9)
                      ("rust-openssl" ,rust-openssl-0.10)
                      ("rust-prost" ,rust-prost-0.12)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                      ("rust-tonic" ,rust-tonic-0.10)
                      ("rust-tonic-build" ,rust-tonic-build-0.10)
                      ("rust-tower" ,rust-tower-0.4)
                      ("rust-tower-service" ,rust-tower-service-0.3)
                      ("rust-visible" ,rust-visible-0.0.1))))
   (home-page "https://github.com/etcdv3/etcd-client")
   (synopsis "An etcd v3 API client")
   (description "An etcd v3 API client")
   (license (list license:expat license:asl2.0))))

(define-public rust-xxhash-rust-0.8
  (package
   (name "rust-xxhash-rust")
   (version "0.8.10")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "xxhash-rust" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00zfsfigb6zh0x8aaickkkyd3vyjgnrq36ym04lil7my4lgahzcj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/DoumanAsh/xxhash-rust")
   (synopsis "Implementation of xxhash")
   (description "Implementation of xxhash")
   (license license:boost1.0)))

(define-public rust-ssri-9
  (package
   (name "rust-ssri")
   (version "9.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ssri" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "10lhj4z53v2mz0dk4wv2njf9zmzhbfdlw347835knsf95cy2nyns"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.21)
                      ("rust-digest" ,rust-digest-0.10)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-miette" ,rust-miette-5)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-sha-1" ,rust-sha-1-0.10)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-xxhash-rust" ,rust-xxhash-rust-0.8))))
   (home-page "https://github.com/zkat/ssri-rs")
   (synopsis "Various utilities for handling Subresource Integrity.")
   (description "Various utilities for handling Subresource Integrity.")
   (license license:asl2.0)))

(define-public rust-windows-x86-64-msvc-0.52
  (package
   (name "rust-windows-x86-64-msvc")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_x86_64_msvc" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1w1bn24ap8dp9i85s8mlg8cim2bl2368bd6qyvm0xzqvzmdpxi5y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnullvm-0.52
  (package
   (name "rust-windows-x86-64-gnullvm")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_x86_64_gnullvm" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "15n56jrh4s5bz66zimavr1rmcaw6wa306myrvmbc6rydhbj9h8l5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-x86-64-gnu-0.52
  (package
   (name "rust-windows-x86-64-gnu")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_x86_64_gnu" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1n8p2mcf3lw6300k77a0knksssmgwb9hynl793mhkzyydgvlchjf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-msvc-0.52
  (package
   (name "rust-windows-i686-msvc")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_i686_msvc" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1gw7fklxywgpnwbwg43alb4hm0qjmx72hqrlwy5nanrxs7rjng6v"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnullvm-0.52
  (package
   (name "rust-windows-i686-gnullvm")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_i686_gnullvm" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1s9f4gff0cixd86mw3n63rpmsm4pmr4ffndl6s7qa2h35492dx47"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-i686-gnu-0.52
  (package
   (name "rust-windows-i686-gnu")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_i686_gnu" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0w4np3l6qwlra9s2xpflqrs60qk1pz6ahhn91rr74lvdy4y0gfl8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-msvc-0.52
  (package
   (name "rust-windows-aarch64-msvc")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_aarch64_msvc" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1dmga8kqlmln2ibckk6mxc9n59vdg8ziqa2zr8awcl720hazv1cr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-aarch64-gnullvm-0.52
  (package
   (name "rust-windows-aarch64-gnullvm")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows_aarch64_gnullvm" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0qrjimbj67nnyn7zqy15mzzmqg0mn5gsr2yciqjxm3cb3vbyx23h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import lib for Windows")
   (description "Import lib for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-targets-0.52
  (package
   (name "rust-windows-targets")
   (version "0.52.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows-targets" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1sz7jrnkygmmlj1ia8fk85wbyil450kq5qkh5qh9sh2rcnj161vg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-windows-aarch64-gnullvm" ,rust-windows-aarch64-gnullvm-0.52)
                      ("rust-windows-aarch64-msvc" ,rust-windows-aarch64-msvc-0.52)
                      ("rust-windows-i686-gnu" ,rust-windows-i686-gnu-0.52)
                      ("rust-windows-i686-gnullvm" ,rust-windows-i686-gnullvm-0.52)
                      ("rust-windows-i686-msvc" ,rust-windows-i686-msvc-0.52)
                      ("rust-windows-x86-64-gnu" ,rust-windows-x86-64-gnu-0.52)
                      ("rust-windows-x86-64-gnullvm" ,rust-windows-x86-64-gnullvm-0.52)
                      ("rust-windows-x86-64-msvc" ,rust-windows-x86-64-msvc-0.52))))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Import libs for Windows")
   (description "Import libs for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-result-0.1
  (package
   (name "rust-windows-result")
   (version "0.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows-result" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0fw1j5birb2nhp2s2wcg0fwyv7hbvp548bld1mh2xn3jrjlhv7vl"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.52))))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Windows error handling")
   (description "Windows error handling")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-interface-0.56
  (package
   (name "rust-windows-interface")
   (version "0.56.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows-interface" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1k2prfxna0mw47f8gi8qhw9jfpw66bh2cqzs67sgipjfpx30b688"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "The interface macro for the windows crate")
   (description "The interface macro for the windows crate")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-implement-0.56
  (package
   (name "rust-windows-implement")
   (version "0.56.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows-implement" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "16rgkvlx4syqmajfdwmkcvn6nvh126wjj8sg3jvsk5fdivskbz7n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "The implement macro for the windows crate")
   (description "The implement macro for the windows crate")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-core-0.56
  (package
   (name "rust-windows-core")
   (version "0.56.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows-core" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19pj57bm0rzhlk0ghrccd3i5zvh0ghm52f8cmdc8d3yhs8pfb626"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-windows-implement" ,rust-windows-implement-0.56)
                      ("rust-windows-interface" ,rust-windows-interface-0.56)
                      ("rust-windows-result" ,rust-windows-result-0.1)
                      ("rust-windows-targets" ,rust-windows-targets-0.52))))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Rust for Windows")
   (description "Rust for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-windows-0.56
  (package
   (name "rust-windows")
   (version "0.56.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "windows" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0cp10nzrqgrlk91dpwxjcpzyy6imr5vxr5f898pss7nz3gq9vrhx"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-windows-core" ,rust-windows-core-0.56)
                      ("rust-windows-targets" ,rust-windows-targets-0.52))))
   (home-page "https://github.com/microsoft/windows-rs")
   (synopsis "Rust for Windows")
   (description "Rust for Windows")
   (license (list license:expat license:asl2.0))))

(define-public rust-reflink-copy-0.1
  (package
   (name "rust-reflink-copy")
   (version "0.1.17")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "reflink-copy" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "08pzkikp57n3dh26c9818mzcs7jrxabysazqfa2rpvar1k1khcbw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-rustix" ,rust-rustix-0.38)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-tracing-attributes" ,rust-tracing-attributes-0.1)
                      ("rust-windows" ,rust-windows-0.56))))
   (home-page "https://github.com/cargo-bins/reflink-copy")
   (synopsis "copy-on-write mechanism on supported file systems")
   (description "copy-on-write mechanism on supported file systems")
   (license (list license:expat license:asl2.0))))

(define-public rust-supports-unicode-2
  (package
   (name "rust-supports-unicode")
   (version "2.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "supports-unicode" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0yp703pvpzpmaw9mpncvwf0iqis4xmhs569ii1g20jhqvngc2l7q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-is-terminal" ,rust-is-terminal-0.4))))
   (home-page "https://github.com/zkat/supports-unicode")
   (synopsis "Detects whether a terminal supports unicode.")
   (description "Detects whether a terminal supports unicode.")
   (license license:asl2.0)))

(define-public rust-miette-derive-5
  (package
   (name "rust-miette-derive")
   (version "5.10.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "miette-derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0p33msrngkxlp5ajm8nijamii9vcwwpy8gfh4m53qnmrc0avrrs9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/zkat/miette")
   (synopsis "Derive macros for miette. Like `thiserror` for Diagnostics.")
   (description
    "Derive macros for miette.  Like `thiserror` for Diagnostics.")
   (license license:asl2.0)))

(define-public rust-backtrace-ext-0.2
  (package
   (name "rust-backtrace-ext")
   (version "0.2.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "backtrace-ext" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0l4xacjnx4jrn9k14xbs2swks018mviq03sp7c1gn62apviywysk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3))))
   (home-page "https://github.com/gankra/backtrace-ext")
   (synopsis "minor conveniences on top of the backtrace crate")
   (description "minor conveniences on top of the backtrace crate")
   (license (list license:expat license:asl2.0))))

(define-public rust-miette-5
  (package
   (name "rust-miette")
   (version "5.10.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "miette" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0vl5qvl3bgha6nnkdl7kiha6v4ypd6d51wyc4q1bvdpamr75ifsr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-backtrace-ext" ,rust-backtrace-ext-0.2)
                      ("rust-is-terminal" ,rust-is-terminal-0.4)
                      ("rust-miette-derive" ,rust-miette-derive-5)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-owo-colors" ,rust-owo-colors-3)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-supports-color" ,rust-supports-color-2)
                      ("rust-supports-hyperlinks" ,rust-supports-hyperlinks-2)
                      ("rust-supports-unicode" ,rust-supports-unicode-2)
                      ("rust-terminal-size" ,rust-terminal-size-0.1)
                      ("rust-textwrap" ,rust-textwrap-0.15)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unicode-width" ,rust-unicode-width-0.1))))
   (home-page "https://github.com/zkat/miette")
   (synopsis
    "Fancy diagnostic reporting library and protocol for us mere mortals who aren't compiler hackers.")
   (description
    "Fancy diagnostic reporting library and protocol for us mere mortals who aren't
compiler hackers.")
   (license license:asl2.0)))

(define-public rust-cacache-13
  (package
   (name "rust-cacache")
   (version "13.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "cacache" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1xwvyg4vhx39qly8k6r17l3pyn2avdzvh5ik44n7b76q34mz27x6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                      ("rust-digest" ,rust-digest-0.10)
                      ("rust-either" ,rust-either-1)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-memmap2" ,rust-memmap2-0.5)
                      ("rust-miette" ,rust-miette-5)
                      ("rust-reflink-copy" ,rust-reflink-copy-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-ssri" ,rust-ssri-9)
                      ("rust-tempfile" ,rust-tempfile-3)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                      ("rust-walkdir" ,rust-walkdir-2))))
   (home-page "https://github.com/zkat/cacache-rs")
   (synopsis
    "Content-addressable, key-value, high-performance, on-disk cache.")
   (description
    "Content-addressable, key-value, high-performance, on-disk cache.")
   (license license:asl2.0)))

(define-public rust-bb8-postgres-0.8
  (package
   (name "rust-bb8-postgres")
   (version "0.8.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "bb8-postgres" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1006qqrcafvyrm4adghy2wc6amlc9fi66izfqjsqj25k5v285b2n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-bb8" ,rust-bb8-0.8)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-postgres" ,rust-tokio-postgres-0.7))))
   (home-page "https://github.com/djc/bb8")
   (synopsis
    "Full-featured async (tokio-based) postgres connection pool (like r2d2)")
   (description
    "Full-featured async (tokio-based) postgres connection pool (like r2d2)")
   (license license:expat)))

(define-public rust-bb8-0.8
  (package
   (name "rust-bb8")
   (version "0.8.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "bb8" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "10375hk6afm858wmyymr8a3p8xrixb2y2wprn4rissjxs69j0z6z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-futures-channel" ,rust-futures-channel-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/djc/bb8")
   (synopsis "Full-featured async (tokio-based) connection pool (like r2d2)")
   (description
    "Full-featured async (tokio-based) connection pool (like r2d2)")
   (license license:expat)))

(define-public rust-weak-table-0.3
  (package
   (name "rust-weak-table")
   (version "0.3.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "weak-table" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ja5zqr1bp5z8wv928y670frnxlj71v6x75g3sg6d6iyaallsgrj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ahash" ,rust-ahash-0.7))))
   (home-page "https://github.com/tov/weak-table-rs")
   (synopsis "Weak hash maps and sets")
   (description "Weak hash maps and sets")
   (license license:expat)))

(define-public rust-flexstr-0.9
  (package
   (name "rust-flexstr")
   (version "0.9.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "flexstr" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rggqwm8j77rv6pydrx1n4vr1crfjlnmjnna9yjkdlqr8vqswl2d"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-itoa" ,rust-itoa-1)
                      ("rust-ryu" ,rust-ryu-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-static-assertions" ,rust-static-assertions-1)
                      ("rust-ufmt" ,rust-ufmt-0.1)
                      ("rust-ufmt-write" ,rust-ufmt-write-0.1))))
   (home-page "https://github.com/nu11ptr/flexstr")
   (synopsis
    "A flexible, simple to use, immutable, clone-efficient `String` replacement for Rust")
   (description
    "This package provides a flexible, simple to use, immutable, clone-efficient
`String` replacement for Rust")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasix-0.12
  (package
   (name "rust-wasix")
   (version "0.12.21")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasix" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0v9wb03ddbnas75005l2d63bdqy9mclds00b1qbw385wkgpv9yy1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                      ("rust-wasi" ,rust-wasi-0.11))))
   (home-page "https://github.com/wasix-org/wasix-abi-rust")
   (synopsis "WASIX API bindings for Rust")
   (description "WASIX API bindings for Rust")
   (license (list license:asl2.0  license:asl2.0
                  license:expat))))

(define-public rust-wast-200
  (package
   (name "rust-wast")
   (version "200.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wast" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rhkv4p1grvxrqxxi5sins4wjjapml4l1vsyn27vngmhwqa0v0fi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3)
                      ("rust-leb128" ,rust-leb128-0.2)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-unicode-width" ,rust-unicode-width-0.1)
                      ("rust-wasm-encoder" ,rust-wasm-encoder-0.200))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wast")
   (synopsis
    "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST
")
   (description
    "Customizable Rust parsers for the @code{WebAssembly} Text formats WAT and WAST")
   (license (list license:asl2.0 ))))

(define-public rust-wit-component-0.200
  (package
   (name "rust-wit-component")
   (version "0.200.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wit-component" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "05jc50mjm2np866w2m9bdzc4kw85msmv44bvp28a9bhb6hirg5rr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-bitflags" ,rust-bitflags-2)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-wasm-encoder" ,rust-wasm-encoder-0.200)
                      ("rust-wasm-metadata" ,rust-wasm-metadata-0.200)
                      ("rust-wasmparser" ,rust-wasmparser-0.200)
                      ("rust-wast" ,rust-wast-200)
                      ("rust-wat" ,rust-wat-1)
                      ("rust-wit-parser" ,rust-wit-parser-0.200))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wit-component")
   (synopsis "Tooling for working with `*.wit` and component files together.
")
   (description
    "Tooling for working with `*.wit` and component files together.")
   (license (list license:asl2.0 ))))

(define-public rust-wasm-encoder-0.200
  (package
   (name "rust-wasm-encoder")
   (version "0.200.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasm-encoder" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1fc4mcrj73ygd4zn67pqymn51iyvxvgm1f4mc2m7ipdxiw6gpqxr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-leb128" ,rust-leb128-0.2)
                      ("rust-wasmparser" ,rust-wasmparser-0.200))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasm-encoder")
   (synopsis "A low-level WebAssembly encoder.
")
   (description
    "This package provides a low-level @code{WebAssembly} encoder.")
   (license (list license:asl2.0 ))))

(define-public rust-spdx-0.10
  (package
   (name "rust-spdx")
   (version "0.10.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "spdx" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1jd066k3fndm3x7131xajsmh19xfi7zj7ny8f8lw56p3l47imvr9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-smallvec" ,rust-smallvec-1))))
   (home-page "https://github.com/EmbarkStudios/spdx")
   (synopsis "Helper crate for SPDX expressions")
   (description "Helper crate for SPDX expressions")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasm-metadata-0.200
  (package
   (name "rust-wasm-metadata")
   (version "0.200.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasm-metadata" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11m5f7p16qvaim4f3l7bx8lczb8yrsn9qhda19dxaihzqb08q6y3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-clap" ,rust-clap-4)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-spdx" ,rust-spdx-0.10)
                      ("rust-wasm-encoder" ,rust-wasm-encoder-0.200)
                      ("rust-wasmparser" ,rust-wasmparser-0.200))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasm-metadata")
   (synopsis "Read and manipulate WebAssembly metadata")
   (description "Read and manipulate @code{WebAssembly} metadata")
   (license (list license:asl2.0 ))))

(define-public rust-wit-bindgen-rust-0.19
  (package
   (name "rust-wit-bindgen-rust")
   (version "0.19.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wit-bindgen-rust" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19bf2cigrzlwf07mg6qs4rkycl756lwhv1x83mqcgd40m033cxd1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-clap" ,rust-clap-4)
                      ("rust-heck" ,rust-heck-0.4)
                      ("rust-wasm-metadata" ,rust-wasm-metadata-0.200)
                      ("rust-wit-bindgen-core" ,rust-wit-bindgen-core-0.19)
                      ("rust-wit-component" ,rust-wit-component-0.200))))
   (home-page "https://github.com/bytecodealliance/wit-bindgen")
   (synopsis
    "Rust bindings generator for WIT and the component model, typically used through
the `wit-bindgen` crate's `generate!` macro.
")
   (description
    "Rust bindings generator for WIT and the component model, typically used through
the `wit-bindgen` crate's `generate!` macro.")
   (license (list license:asl2.0 ))))

(define-public rust-wasmparser-0.205
  (package
   (name "rust-wasmparser")
   (version "0.205.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasmparser" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1pygw0p43vd3xsjbcgfqkv9d2rdwvm9nwc2ssl4jw90452spni8x"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-semver" ,rust-semver-1))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
   (synopsis
    "A simple event-driven library for parsing WebAssembly binary files.
")
   (description
    "This package provides a simple event-driven library for parsing
@code{WebAssembly} binary files.")
   (license (list license:asl2.0 ))))

(define-public rust-wasm-encoder-0.205
  (package
   (name "rust-wasm-encoder")
   (version "0.205.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasm-encoder" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0p0figngs07q176i1ghr01qkf34lspxpw2pv3hyg6r6iccsmpsch"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-leb128" ,rust-leb128-0.2)
                      ("rust-wasmparser" ,rust-wasmparser-0.205))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasm-encoder")
   (synopsis "A low-level WebAssembly encoder.
")
   (description
    "This package provides a low-level @code{WebAssembly} encoder.")
   (license (list license:asl2.0 ))))

(define-public rust-leb128-0.2
  (package
   (name "rust-leb128")
   (version "0.2.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "leb128" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rxxjdn76sjbrb08s4bi7m4x47zg68f71jzgx8ww7j0cnivjckl8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/gimli-rs/leb128")
   (synopsis
    "Read and write DWARF's \"Little Endian Base 128\" (LEB128) variable length integer encoding.")
   (description
    "Read and write DWARF's \"Little Endian Base 128\" (LEB128) variable length integer
encoding.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-bumpalo-3
  (package
   (name "rust-bumpalo")
   (version "3.16.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "bumpalo" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0b015qb4knwanbdlp1x48pkb4pm57b8gidbhhhxr900q2wb6fabr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-allocator-api2" ,rust-allocator-api2-0.2)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/fitzgen/bumpalo")
   (synopsis "A fast bump allocation arena for Rust.")
   (description
    "This package provides a fast bump allocation arena for Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-wast-205
  (package
   (name "rust-wast")
   (version "205.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wast" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1fxj2c728wrwpqygc8ia719bdik62g4vq2s5dpi4alivbccnl6j4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3)
                      ("rust-leb128" ,rust-leb128-0.2)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-unicode-width" ,rust-unicode-width-0.1)
                      ("rust-wasm-encoder" ,rust-wasm-encoder-0.205))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wast")
   (synopsis
    "Customizable Rust parsers for the WebAssembly Text formats WAT and WAST
")
   (description
    "Customizable Rust parsers for the @code{WebAssembly} Text formats WAT and WAST")
   (license (list license:asl2.0 ))))

(define-public rust-wat-1
  (package
   (name "rust-wat")
   (version "1.205.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wat" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "067b1f87k76ias92cs6762n5xv7cg0ssgjnl7jzwdrq6sqj2d0qr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-wast" ,rust-wast-205))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wat")
   (synopsis "Rust parser for the WebAssembly Text format, WAT
")
   (description "Rust parser for the @code{WebAssembly} Text format, WAT")
   (license (list license:asl2.0 ))))

(define-public rust-wasmparser-0.200
  (package
   (name "rust-wasmparser")
   (version "0.200.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasmparser" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0qmhahrwr8v8ffqgsb3wx766f04rwj7knv7zaw6184k6hyn6agx0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-semver" ,rust-semver-1))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
   (synopsis
    "A simple event-driven library for parsing WebAssembly binary files.
")
   (description
    "This package provides a simple event-driven library for parsing
@code{WebAssembly} binary files.")
   (license (list license:asl2.0 ))))

(define-public rust-id-arena-2
  (package
   (name "rust-id-arena")
   (version "2.2.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "id-arena" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "01ch8jhpgnih8sawqs44fqsqpc7bzwgy0xpi6j0f4j0i5mkvr8i5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-rayon" ,rust-rayon-1))))
   (home-page "https://github.com/fitzgen/id-arena")
   (synopsis "A simple, id-based arena.")
   (description "This package provides a simple, id-based arena.")
   (license (list license:expat license:asl2.0))))

(define-public rust-wit-parser-0.200
  (package
   (name "rust-wit-parser")
   (version "0.200.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wit-parser" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "04wfik99zrf81sgmyj0kb6f7ndk873qzd9xxjrbc20bzndv7awbz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-id-arena" ,rust-id-arena-2)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-semver" ,rust-semver-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-unicode-xid" ,rust-unicode-xid-0.2)
                      ("rust-wasmparser" ,rust-wasmparser-0.200)
                      ("rust-wat" ,rust-wat-1))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wit-parser")
   (synopsis
    "Tooling for parsing `*.wit` files and working with their contents.
")
   (description
    "Tooling for parsing `*.wit` files and working with their contents.")
   (license (list license:asl2.0 ))))

(define-public rust-wit-bindgen-core-0.19
  (package
   (name "rust-wit-bindgen-core")
   (version "0.19.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wit-bindgen-core" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1rr07ci8iighb5izz15yg5nb94584gnckzzcyx3akpgrxc5hf8ci"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-wit-parser" ,rust-wit-parser-0.200))))
   (home-page "https://github.com/bytecodealliance/wit-bindgen")
   (synopsis
    "Low-level support for bindings generation based on WIT files for use with
`wit-bindgen-cli` and other languages.
")
   (description
    "Low-level support for bindings generation based on WIT files for use with
`wit-bindgen-cli` and other languages.")
   (license (list license:asl2.0 ))))

(define-public rust-wit-bindgen-rust-macro-0.19
  (package
   (name "rust-wit-bindgen-rust-macro")
   (version "0.19.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wit-bindgen-rust-macro" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ialapzvsf5bbsimvb716shhdnfy9mz4h6vy3sv1gi5k3sp8450p"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2)
                      ("rust-wit-bindgen-core" ,rust-wit-bindgen-core-0.19)
                      ("rust-wit-bindgen-rust" ,rust-wit-bindgen-rust-0.19))))
   (home-page "https://github.com/bytecodealliance/wit-bindgen")
   (synopsis "Procedural macro paired with the `wit-bindgen` crate.
")
   (description "Procedural macro paired with the `wit-bindgen` crate.")
   (license (list license:asl2.0 ))))

(define-public rust-wit-bindgen-0.19
  (package
   (name "rust-wit-bindgen")
   (version "0.19.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wit-bindgen" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "07wkrrqvgh9kn3nnjl5i7w5a2xnxbfnk7iha96nf04j0m46jfzdk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-wit-bindgen-rust-macro" ,rust-wit-bindgen-rust-macro-0.19))))
   (home-page "https://github.com/bytecodealliance/wit-bindgen")
   (synopsis
    "Rust bindings generator and runtime support for WIT and the component model.
Used when compiling Rust programs to the component model.
")
   (description
    "Rust bindings generator and runtime support for WIT and the component model.
Used when compiling Rust programs to the component model.")
   (license (list license:asl2.0 ))))

(define-public rust-wasi-0.12
  (package
   (name "rust-wasi")
   (version "0.12.1+wasi-0.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasi" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0yn6c5smlng07xx25z1wf3n9lp2dl2w9g7iz3daqaz9vww1ly9xg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                      ("rust-wit-bindgen" ,rust-wit-bindgen-0.19))))
   (home-page "https://github.com/bytecodealliance/wasi")
   (synopsis "WASI API bindings for Rust")
   (description "WASI API bindings for Rust")
   (license (list license:asl2.0  license:asl2.0
                  license:expat))))

(define-public rust-coarsetime-0.1
  (package
   (name "rust-coarsetime")
   (version "0.1.34")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "coarsetime" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0pby1xsrzcxj0yq911hzr38bchgm80iwyg5y2h0rddqvy2f87cqk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-wasi" ,rust-wasi-0.12)
                      ("rust-wasix" ,rust-wasix-0.12)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
   (home-page "https://github.com/jedisct1/rust-coarsetime")
   (synopsis "Time and duration crate optimized for speed")
   (description "Time and duration crate optimized for speed")
   (license license:isc)))

(define-public rust-await-tree-0.1
  (package
   (name "rust-await-tree")
   (version "0.1.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "await-tree" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0kbr9xwi313h72skky5gbpj5qskgpsygc3kmqa1lh9bdzdbs0sk2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-coarsetime" ,rust-coarsetime-0.1)
                      ("rust-derive-builder" ,rust-derive-builder-0.12)
                      ("rust-flexstr" ,rust-flexstr-0.9)
                      ("rust-indextree" ,rust-indextree-4)
                      ("rust-itertools" ,rust-itertools-0.11)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-pin-project" ,rust-pin-project-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-weak-table" ,rust-weak-table-0.3))))
   (home-page "https://github.com/risingwavelabs/await-tree")
   (synopsis "Instrument await-tree for actor-based applications.")
   (description "Instrument await-tree for actor-based applications.")
   (license license:asl2.0)))

(define-public rust-rio-0.9
  (package
   (name "rust-rio")
   (version "0.9.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rio" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0nv8wrnkd41flb32lmxb412l6m1790j12c3lg305764hcmbc564y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
   (home-page "https://github.com/spacejam/rio")
   (synopsis
    "GPL-3.0 nice bindings for io_uring. MIT/Apache-2.0 license is available for spacejam's github sponsors.")
   (description
    "GPL-3.0 nice bindings for io_uring.  MIT/Apache-2.0 license is available for
spacejam's github sponsors.")
   (license license:gpl3)))

(define-public rust-color-backtrace-0.5
  (package
   (name "rust-color-backtrace")
   (version "0.5.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "color-backtrace" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11fn3snykx90w3nznzrcf4r164zmhk790asx0kzryf4r7i308v6d"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-atty" ,rust-atty-0.2)
                      ("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-termcolor" ,rust-termcolor-1))))
   (home-page "https://github.com/athre0z/color-backtrace")
   (synopsis "Colorful panic backtraces")
   (description "Colorful panic backtraces")
   (license (list license:expat license:asl2.0))))

(define-public rust-sled-0.34
  (package
   (name "rust-sled")
   (version "0.34.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "sled" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0dcr2s7cylj5mb33ci3kpx7fz797jwvysnl5airrir9cgirv95kz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-color-backtrace" ,rust-color-backtrace-0.5)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-crossbeam-epoch" ,rust-crossbeam-epoch-0.9)
                      ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                      ("rust-fs2" ,rust-fs2-0.4)
                      ("rust-fxhash" ,rust-fxhash-0.2)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-parking-lot" ,rust-parking-lot-0.11)
                      ("rust-rio" ,rust-rio-0.9)
                      ("rust-zstd" ,rust-zstd-0.9))))
   (home-page "https://github.com/spacejam/sled")
   (synopsis
    "Lightweight high-performance pure-rust transactional embedded database.")
   (description
    "Lightweight high-performance pure-rust transactional embedded database.")
   (license (list license:expat license:asl2.0))))

(define-public rust-oxiri-0.2
  (package
   (name "rust-oxiri")
   (version "0.2.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "oxiri" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1q532b7dgh9b3pvvg9j87a5j0214zikls2srkpfl1sz28vp1fm6h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/oxigraph/oxiri")
   (synopsis
    "Simple and fast implementation of IRI validation and relative IRI resolution
")
   (description
    "Simple and fast implementation of IRI validation and relative IRI resolution")
   (license (list license:expat license:asl2.0))))

(define-public rust-oxilangtag-0.1
  (package
   (name "rust-oxilangtag")
   (version "0.1.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "oxilangtag" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1jwa1z5223hkfldjdwfrxb158w9y918667k9ldzzfsm82xvgiwr3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/oxigraph/oxilangtag")
   (synopsis
    "Simple and fast implementation of language tag normalization and validation
")
   (description
    "Simple and fast implementation of language tag normalization and validation")
   (license license:expat)))

(define-public rust-rio-turtle-0.8
  (package
   (name "rust-rio-turtle")
   (version "0.8.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rio_turtle" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "05k0pbbhpjl5d7scjldcf9q1ma7ypb5byi1mgsf9pndg3sbmkv2w"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-oxilangtag" ,rust-oxilangtag-0.1)
                      ("rust-oxiri" ,rust-oxiri-0.2)
                      ("rust-rio-api" ,rust-rio-api-0.8))))
   (home-page "https://github.com/oxigraph/rio")
   (synopsis "RDF Turtle, Trig, N-Triples and N-Quads parsers and serializers
")
   (description
    "RDF Turtle, Trig, N-Triples and N-Quads parsers and serializers")
   (license license:asl2.0)))

(define-public rust-rio-api-0.8
  (package
   (name "rust-rio-api")
   (version "0.8.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rio_api" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00v6d4a19gyp79b9vncm57cs0s630zk6kidkffdiz1bd1qgzl90r"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/oxigraph/rio")
   (synopsis "Common data structures for RDF formats parsers and serializers
")
   (description
    "Common data structures for RDF formats parsers and serializers")
   (license license:asl2.0)))

(define-public rust-lol-html-0.3
  (package
   (name "rust-lol-html")
   (version "0.3.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "lol_html" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1wc05zp34hz1haw04h36gcq1p4malx6a0fwcgp565sn66x4bcd1k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-cssparser" ,rust-cssparser-0.27)
                      ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                      ("rust-hashbrown" ,rust-hashbrown-0.13)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-lazycell" ,rust-lazycell-1)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-mime" ,rust-mime-0.3)
                      ("rust-safemem" ,rust-safemem-0.3)
                      ("rust-selectors" ,rust-selectors-0.22)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/cloudflare/lol-html")
   (synopsis "Streaming HTML rewriter/parser with CSS selector-based API")
   (description "Streaming HTML rewriter/parser with CSS selector-based API")
   (license license:bsd-3)))

(define-public rust-html2md-0.2
  (package
   (name "rust-html2md")
   (version "0.2.14")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "html2md" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18xjq3vdaagkpyh8xl5n9brd3kh9kli1qmvx6rqmv3yn25p494my"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-html5ever" ,rust-html5ever-0.26)
                      ("rust-jni" ,rust-jni-0.19)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-markup5ever-rcdom" ,rust-markup5ever-rcdom-0.2)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-regex" ,rust-regex-1))))
   (home-page "https://gitlab.com/Kanedias/html2md")
   (synopsis
    "Library and binary to convert simple html documents into markdown")
   (description
    "Library and binary to convert simple html documents into markdown")
   (license license:gpl3+)))

(define-public rust-atomic-lib-0.34
  (package
   (name "rust-atomic-lib")
   (version "0.34.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "atomic_lib" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "10fg8py63jijh84r125kh2wp0ddwdd551l4hm62pqipsbsciiynv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.21)
                      ("rust-bincode" ,rust-bincode-1)
                      ("rust-directories" ,rust-directories-3)
                      ("rust-html2md" ,rust-html2md-0.2)
                      ("rust-kuchiki" ,rust-kuchiki-0.8)
                      ("rust-lol-html" ,rust-lol-html-0.3)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-ring" ,rust-ring-0.16)
                      ("rust-rio-api" ,rust-rio-api-0.8)
                      ("rust-rio-turtle" ,rust-rio-turtle-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sled" ,rust-sled-0.34)
                      ("rust-toml" ,rust-toml-0.7)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-ureq" ,rust-ureq-2)
                      ("rust-url" ,rust-url-2)
                      ("rust-urlencoding" ,rust-urlencoding-2))))
   (home-page "https://github.com/atomicdata-dev/atomic-server")
   (synopsis
    "Library for creating, storing, querying, validating and converting Atomic Data.")
   (description
    "Library for creating, storing, querying, validating and converting Atomic Data.")
   (license license:expat)))

(define-public rust-async-tls-0.13
  (package
   (name "rust-async-tls")
   (version "0.13.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-tls" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0plsx2ysd8rbmzfllxib7pkbp3zp7m1yl7gywjh75m49pag3rbmj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-rustls" ,rust-rustls-0.21)
                      ("rust-rustls-pemfile" ,rust-rustls-pemfile-1)
                      ("rust-rustls-webpki" ,rust-rustls-webpki-0.101)
                      ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
   (home-page "https://github.com/async-std/async-tls")
   (synopsis "Asynchronous TLS/SSL streams using Rustls.")
   (description "Asynchronous TLS/SSL streams using Rustls.")
   (license (list license:expat license:asl2.0))))

(define-public rust-async-backtrace-attributes-0.2
  (package
   (name "rust-async-backtrace-attributes")
   (version "0.2.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-backtrace-attributes" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1my3av4hb92cg9p4iv7pa98c0ywjfmsrjw835930dpca8c6vmyxg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/tokio-rs/async-backtrace")
   (synopsis "Procedural macros for the `async-backtrace` crate.")
   (description "Procedural macros for the `async-backtrace` crate.")
   (license license:expat)))

(define-public rust-async-backtrace-0.2
  (package
   (name "rust-async-backtrace")
   (version "0.2.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-backtrace" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "165i3gdc3aasgbajnifx1wkj597dacx1wp0r7yhjfv94b0akkjsd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-backtrace-attributes" ,rust-async-backtrace-attributes-0.2)
                      ("rust-dashmap" ,rust-dashmap-5)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-loom" ,rust-loom-0.5)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-rustc-hash" ,rust-rustc-hash-1)
                      ("rust-static-assertions" ,rust-static-assertions-1))))
   (home-page "https://github.com/tokio-rs/async-backtrace")
   (synopsis "Efficient, logical 'backtraces' of async tasks.")
   (description "Efficient, logical backtraces of async tasks.")
   (license license:expat)))

(define-public rust-opendal-0.45
  (package
   (name "rust-opendal")
   (version "0.45.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "opendal" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rql81qalfb3yq6fh3ggwaxvhhxaigwjmlnr4ln2vyi3gw3prhaj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-async-backtrace" ,rust-async-backtrace-0.2)
                      ("rust-async-tls" ,rust-async-tls-0.13)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-atomic-lib" ,rust-atomic-lib-0.34)
                      ("rust-await-tree" ,rust-await-tree-0.1)
                      ("rust-backon" ,rust-backon-0.4)
                      ("rust-base64" ,rust-base64-0.21)
                      ("rust-bb8" ,rust-bb8-0.8)
                      ("rust-bb8-postgres" ,rust-bb8-postgres-0.8)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-cacache" ,rust-cacache-13)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-dashmap" ,rust-dashmap-5)
                      ("rust-dotenvy" ,rust-dotenvy-0.15)
                      ("rust-etcd-client" ,rust-etcd-client-0.12)
                      ("rust-flagset" ,rust-flagset-0.4)
                      ("rust-foundationdb" ,rust-foundationdb-0.8)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-governor" ,rust-governor-0.6)
                      ("rust-hdfs-native" ,rust-hdfs-native-0.6)
                      ("rust-hdrs" ,rust-hdrs-0.3)
                      ("rust-hmac" ,rust-hmac-0.12)
                      ("rust-hrana-client-proto" ,rust-hrana-client-proto-0.2)
                      ("rust-http" ,rust-http-0.2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-madsim" ,rust-madsim-0.2)
                      ("rust-md-5" ,rust-md-5-0.10)
                      ("rust-metrics" ,rust-metrics-0.20)
                      ("rust-mini-moka" ,rust-mini-moka-0.10)
                      ("rust-minitrace" ,rust-minitrace-0.6)
                      ("rust-moka" ,rust-moka-0.12)
                      ("rust-mongodb" ,rust-mongodb-2)
                      ("rust-mysql-async" ,rust-mysql-async-0.32)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-openssh" ,rust-openssh-0.10)
                      ("rust-openssh-sftp-client" ,rust-openssh-sftp-client-0.14)
                      ("rust-opentelemetry" ,rust-opentelemetry-0.21)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-persy" ,rust-persy-1)
                      ("rust-probe" ,rust-probe-0.5)
                      ("rust-prometheus" ,rust-prometheus-0.13)
                      ("rust-prometheus-client" ,rust-prometheus-client-0.22)
                      ("rust-prost" ,rust-prost-0.11)
                      ("rust-quick-xml" ,rust-quick-xml-0.31)
                      ("rust-r2d2" ,rust-r2d2-0.8)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-redb" ,rust-redb-1)
                      ("rust-redis" ,rust-redis-0.23)
                      ("rust-reqsign" ,rust-reqsign-0.14)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-rocksdb" ,rust-rocksdb-0.21)
                      ("rust-rusqlite" ,rust-rusqlite-0.29)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-sled" ,rust-sled-0.34)
                      ("rust-suppaftp" ,rust-suppaftp-5)
                      ("rust-tikv-client" ,rust-tikv-client-0.3)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-postgres" ,rust-tokio-postgres-0.7)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://opendal.apache.org/")
   (synopsis
    "Apache OpenDALâ¢: Access data freely, painlessly, and efficiently.")
   (description
    "Apache @code{OpenDALâ¢}: Access data freely, painlessly, and efficiently.")
   (license license:asl2.0)))

(define-public rust-wasmparser-0.118
  (package
   (name "rust-wasmparser")
   (version "0.118.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasmparser" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0365n7dd01fh2jklq6q41nszhyyaz82shd4q3nhf4s5q397ibwbp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                      ("rust-semver" ,rust-semver-1))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
   (synopsis
    "A simple event-driven library for parsing WebAssembly binary files.
")
   (description
    "This package provides a simple event-driven library for parsing
@code{WebAssembly} binary files.")
   (license (list license:asl2.0 ))))

(define-public rust-ruzstd-0.5
  (package
   (name "rust-ruzstd")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ruzstd" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ga8jciw7ka3mxrzl39skmsbdslajghzglcil10g0z4rh65fpi2q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                      ("rust-derive-more" ,rust-derive-more-0.99)
                      ("rust-twox-hash" ,rust-twox-hash-1))))
   (home-page "https://github.com/KillingSpark/zstd-rs")
   (synopsis "A decoder for the zstd compression format")
   (description
    "This package provides a decoder for the zstd compression format")
   (license license:expat)))

(define-public rust-object-0.32
  (package
   (name "rust-object")
   (version "0.32.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "object" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0hc4cjwyngiy6k51hlzrlsxgv5z25vv7c2cp0ky1lckfic0259m6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-hashbrown" ,rust-hashbrown-0.14)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                      ("rust-ruzstd" ,rust-ruzstd-0.5)
                      ("rust-wasmparser" ,rust-wasmparser-0.118))))
   (home-page "https://github.com/gimli-rs/object")
   (synopsis
    "A unified interface for reading and writing object file formats.")
   (description
    "This package provides a unified interface for reading and writing object file
formats.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-memmap2-0.9
  (package
   (name "rust-memmap2")
   (version "0.9.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "memmap2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "08hkmvri44j6h14lyq4yw5ipsp91a9jacgiww4bs9jm8whi18xgy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-stable-deref-trait" ,rust-stable-deref-trait-1))))
   (home-page "https://github.com/RazrFalcon/memmap2-rs")
   (synopsis "Cross-platform Rust API for memory-mapped file IO")
   (description "Cross-platform Rust API for memory-mapped file IO")
   (license (list license:expat license:asl2.0))))

(define-public rust-libmount-0.1
  (package
   (name "rust-libmount")
   (version "0.1.15")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libmount" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0py3kl473jgfwnfajzr0xi9xs2lk8npks3320md2zgaw5nnw5i13"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-nix" ,rust-nix-0.14)
                      ("rust-quick-error" ,rust-quick-error-1))))
   (home-page "http://github.com/tailhook/libmount")
   (synopsis "    The type-safe wrapper around mount system call
")
   (description "The type-safe wrapper around mount system call")
   (license (list license:expat license:asl2.0))))

(define-public rust-libc-0.2
  (package
   (name "rust-libc")
   (version "0.2.153")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libc" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1gg7m1ils5dms5miq9fyllrcp0jxnbpgkx71chd2i0lafa8qy6cw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
   (home-page "https://github.com/rust-lang/libc")
   (synopsis "Raw FFI bindings to platform libraries like libc.
")
   (description "Raw FFI bindings to platform libraries like libc.")
   (license (list license:expat license:asl2.0))))

(define-public rust-simple-asn1-0.6
  (package
   (name "rust-simple-asn1")
   (version "0.6.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "simple_asn1" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11d0l3l7lppzr1wxhvsbmjmw6s2vy3v7b8ygz500z4di9qhfbi5d"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-num-bigint" ,rust-num-bigint-0.4)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-time" ,rust-time-0.3))))
   (home-page "https://github.com/acw/simple_asn1")
   (synopsis "A simple DER/ASN.1 encoding/decoding library.")
   (description
    "This package provides a simple DER/ASN.1 encoding/decoding library.")
   (license license:isc)))

(define-public rust-jsonwebtoken-9
  (package
   (name "rust-jsonwebtoken")
   (version "9.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "jsonwebtoken" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0gqr13c9fjd4zb2lqzhgi4xwq0rfnk8a47jzjis1w1957lci1bmr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.21)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-pem" ,rust-pem-3)
                      ("rust-ring" ,rust-ring-0.17)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-simple-asn1" ,rust-simple-asn1-0.6))))
   (home-page "https://github.com/Keats/jsonwebtoken")
   (synopsis "Create and decode JWTs in a strongly typed way.")
   (description "Create and decode JWTs in a strongly typed way.")
   (license license:expat)))

(define-public rust-is-terminal-0.4
  (package
   (name "rust-is-terminal")
   (version "0.4.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "is-terminal" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "12vk6g0f94zlxl6mdh5gc4jdjb469n9k9s7y3vb0iml05gpzagzj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-hermit-abi" ,rust-hermit-abi-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-windows-sys" ,rust-windows-sys-0.52))))
   (home-page "https://github.com/sunfishcode/is-terminal")
   (synopsis "Test whether a given stream is a terminal")
   (description "Test whether a given stream is a terminal")
   (license license:expat)))

(define-public rust-hyper-util-0.1
  (package
   (name "rust-hyper-util")
   (version "0.1.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hyper-util" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1akngan7j0n2n0wd25c6952mvqbkj9gp1lcwzyxjc0d37l8yyf6a"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-futures-channel" ,rust-futures-channel-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-http" ,rust-http-1)
                      ("rust-http-body" ,rust-http-body-1)
                      ("rust-hyper" ,rust-hyper-1)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-socket2" ,rust-socket2-0.5)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tower" ,rust-tower-0.4)
                      ("rust-tower-service" ,rust-tower-service-0.3)
                      ("rust-tracing" ,rust-tracing-0.1))))
   (home-page "https://hyper.rs")
   (synopsis "hyper utilities")
   (description "hyper utilities")
   (license license:expat)))

(define-public rust-smallvec-1
  (package
   (name "rust-smallvec")
   (version "1.13.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "smallvec" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0rsw5samawl3wsw6glrsb127rx6sh89a8wyikicw6dkdcjd1lpiw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/servo/rust-smallvec")
   (synopsis
    "'Small vector' optimization: store up to a small number of items on the stack")
   (description
    "Small vector optimization: store up to a small number of items on the stack")
   (license (list license:expat license:asl2.0))))

(define-public rust-h2-0.4
  (package
   (name "rust-h2")
   (version "0.4.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "h2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0sc0ymhiqp4hbz39d405cjbga77wnz2pprbgyc498xs58hlwfvl1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-fnv" ,rust-fnv-1)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-sink" ,rust-futures-sink-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-http" ,rust-http-1)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-slab" ,rust-slab-0.4)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-tracing" ,rust-tracing-0.1))))
   (home-page "https://github.com/hyperium/h2")
   (synopsis "An HTTP/2 client and server")
   (description "An HTTP/2 client and server")
   (license license:expat)))

(define-public rust-hyper-1
  (package
   (name "rust-hyper")
   (version "1.3.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hyper" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0va9pjqshsr8zc07m9h4j2821hsmd9lw9j416yisjqh8gp8msmzy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-futures-channel" ,rust-futures-channel-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-h2" ,rust-h2-0.4)
                      ("rust-http" ,rust-http-1)
                      ("rust-http-body" ,rust-http-body-1)
                      ("rust-http-body-util" ,rust-http-body-util-0.1)
                      ("rust-httparse" ,rust-httparse-1)
                      ("rust-httpdate" ,rust-httpdate-1)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-want" ,rust-want-0.3))))
   (home-page "https://hyper.rs")
   (synopsis "A fast and correct HTTP library.")
   (description "This package provides a fast and correct HTTP library.")
   (license license:expat)))

(define-public rust-http-body-1
  (package
   (name "rust-http-body")
   (version "1.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "http-body" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0hyn8n3iadrbwq8y0p1rl1275s4nm49bllw5wji29g4aa3dqbb0w"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-http" ,rust-http-1))))
   (home-page "https://github.com/hyperium/http-body")
   (synopsis
    "Trait representing an asynchronous, streaming, HTTP request or response body.
")
   (description
    "Trait representing an asynchronous, streaming, HTTP request or response body.")
   (license license:expat)))

(define-public rust-http-body-util-0.1
  (package
   (name "rust-http-body-util")
   (version "0.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "http-body-util" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "07agldas2qgcfc05ckiarlmf9vzragbda823nqhrqrc6mjrghx84"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-http" ,rust-http-1)
                      ("rust-http-body" ,rust-http-body-1)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
   (home-page "https://github.com/hyperium/http-body")
   (synopsis "Combinators and adapters for HTTP request or response bodies.
")
   (description
    "Combinators and adapters for HTTP request or response bodies.")
   (license license:expat)))

(define-public rust-libdeflate-sys-0.12
  (package
   (name "rust-libdeflate-sys")
   (version "0.12.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libdeflate-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11a7nn3p73vw3cnra36vz7mz60wx9jzhzwwji1hbmql5gy0v1xz1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1))))
   (home-page "https://github.com/adamkewley/libdeflater")
   (synopsis
    "Bindings to libdeflate for DEFLATE (de)compression exposed as non-streaming buffer
operations. Contains bindings for raw deflate, zlib, and gzip data.
")
   (description
    "Bindings to libdeflate for DEFLATE (de)compression exposed as non-streaming
buffer operations.  Contains bindings for raw deflate, zlib, and gzip data.")
   (license license:asl2.0)))

(define-public rust-libdeflater-0.12
  (package
   (name "rust-libdeflater")
   (version "0.12.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libdeflater" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0cbrdvwhilvmk919izkp5bqgwfa7b8nj2ar9gp67nb345wl667k7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libdeflate-sys" ,rust-libdeflate-sys-0.12))))
   (home-page "https://github.com/adamkewley/libdeflater")
   (synopsis
    "Bindings to libdeflate for DEFLATE (de)compression exposed as non-streaming buffer
operations. Contains bindings for raw deflate, zlib, and gzip data.
")
   (description
    "Bindings to libdeflate for DEFLATE (de)compression exposed as non-streaming
buffer operations.  Contains bindings for raw deflate, zlib, and gzip data.")
   (license license:asl2.0)))

(define-public rust-core-affinity-0.8
  (package
   (name "rust-core-affinity")
   (version "0.8.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "core_affinity" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0113rfzyvjpl1camxnrf92pn9vakhn9zqvgir0wgrqawcgsr4a32"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-num-cpus" ,rust-num-cpus-1)
                      ("rust-winapi" ,rust-winapi-0.3))))
   (home-page "https://github.com/Elzair/core_affinity_rs")
   (synopsis "Manages CPU affinities")
   (description "Manages CPU affinities")
   (license (list license:expat license:asl2.0))))

(define-public rust-gzp-0.11
  (package
   (name "rust-gzp")
   (version "0.11.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gzp" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1bvvz969c9kpyp7h6ry9mzhk7lb4hj4hpd810n0i26jjk4c5vip7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-core-affinity" ,rust-core-affinity-0.8)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-flume" ,rust-flume-0.10)
                      ("rust-libdeflater" ,rust-libdeflater-0.12)
                      ("rust-libz-sys" ,rust-libz-sys-1)
                      ("rust-num-cpus" ,rust-num-cpus-1)
                      ("rust-snap" ,rust-snap-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/sstadick/gzp")
   (synopsis "Parallel Compression")
   (description "Parallel Compression")
   (license (list license:unlicense license:expat))))

(define-public rust-heck-0.5
  (package
   (name "rust-heck")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "heck" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1sjmpsdl8czyh9ywl3qcsfsq9a307dg4ni2vnlwgnzzqhc4y0113"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/withoutboats/heck")
   (synopsis "heck is a case conversion library.")
   (description "heck is a case conversion library.")
   (license (list license:expat license:asl2.0))))

(define-public rust-clap-derive-4
  (package
   (name "rust-clap-derive")
   (version "4.5.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0r2gs2p10pb435w52xzsgz2mmx5qd3qfkmk29y4mbz9ph11k30aj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-heck" ,rust-heck-0.5)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/clap-rs/clap/tree/master/clap_derive")
   (synopsis
    "Parse command line argument by defining a struct, derive crate.")
   (description
    "Parse command line argument by defining a struct, derive crate.")
   (license (list license:expat license:asl2.0))))

(define-public rust-strsim-0.11
  (package
   (name "rust-strsim")
   (version "0.11.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "strsim" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0kzvqlw8hxqb7y598w1s0hxlnmi84sg5vsipp3yg5na5d1rvba3x"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/rapidfuzz/strsim-rs")
   (synopsis
    "Implementations of string similarity metrics. Includes Hamming, Levenshtein,
OSA, Damerau-Levenshtein, Jaro, Jaro-Winkler, and SÃ¸rensen-Dice.
")
   (description
    "Implementations of string similarity metrics.  Includes Hamming, Levenshtein,
OSA, Damerau-Levenshtein, Jaro, Jaro-Winkler, and SÃ¸rensen-Dice.")
   (license license:expat)))

(define-public rust-clap-lex-0.7
  (package
   (name "rust-clap-lex")
   (version "0.7.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap_lex" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1kh1sckgq71kay2rrr149pl9gbsrvyccsq6xm5xpnq0cxnyqzk4q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/clap-rs/clap/tree/master/clap_lex")
   (synopsis "Minimal, flexible command line parser")
   (description "Minimal, flexible command line parser")
   (license (list license:expat license:asl2.0))))

(define-public rust-clap-builder-4
  (package
   (name "rust-clap-builder")
   (version "4.5.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap_builder" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1d7p4hph4fyhaphkf0v5zv0kq4lz25a9jq2f901yrq3afqp9w4mf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anstream" ,rust-anstream-0.6)
                      ("rust-anstyle" ,rust-anstyle-1)
                      ("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-clap-lex" ,rust-clap-lex-0.7)
                      ("rust-strsim" ,rust-strsim-0.11)
                      ("rust-terminal-size" ,rust-terminal-size-0.3)
                      ("rust-unicase" ,rust-unicase-2)
                      ("rust-unicode-width" ,rust-unicode-width-0.1))))
   (home-page "https://github.com/clap-rs/clap")
   (synopsis
    "A simple to use, efficient, and full-featured Command Line Argument Parser")
   (description
    "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser")
   (license (list license:expat license:asl2.0))))

(define-public rust-clap-4
  (package
   (name "rust-clap")
   (version "4.5.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1828wm9qws5gh2xnimnvmp2vria6d6hsxnqmhnm84dwjcxm0dg4h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-clap-builder" ,rust-clap-builder-4)
                      ("rust-clap-derive" ,rust-clap-derive-4))))
   (home-page "https://github.com/clap-rs/clap")
   (synopsis
    "A simple to use, efficient, and full-featured Command Line Argument Parser")
   (description
    "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser")
   (license (list license:expat license:asl2.0))))

(define-public rust-ar-0.9
  (package
   (name "rust-ar")
   (version "0.9.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ar" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0sdvvrf4inrkmrh6lzwg4z8x38b3gncbb8yqrgayqcd9d1yzfynn"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/mdsteele/rust-ar")
   (synopsis "A library for encoding/decoding Unix archive files.")
   (description
    "This package provides a library for encoding/decoding Unix archive files.")
   (license license:expat)))

(define-public rust-sccache-0.8
  (package
   (name "rust-sccache")
   (version "0.8.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "sccache" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "14iq8lk490k24szn3bi3nfg4d1m2vhlvgrd25sa5hiwyvsfrl8a6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:tests? #f
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-ar" ,rust-ar-0.9)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-base64" ,rust-base64-0.21)
                      ("rust-bincode" ,rust-bincode-1)
                      ("rust-blake3" ,rust-blake3-1)
                      ("rust-byteorder" ,rust-byteorder-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-clap" ,rust-clap-4)
                      ("rust-daemonize" ,rust-daemonize-0.5)
                      ("rust-directories" ,rust-directories-5)
                      ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                      ("rust-env-logger" ,rust-env-logger-0.10)
                      ("rust-filetime" ,rust-filetime-0.2)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-fs-err" ,rust-fs-err-2)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-gzp" ,rust-gzp-0.11)
                      ("rust-http" ,rust-http-1)
                      ("rust-http-body-util" ,rust-http-body-util-0.1)
                      ("rust-hyper" ,rust-hyper-1)
                      ("rust-hyper-util" ,rust-hyper-util-0.1)
                      ("rust-is-terminal" ,rust-is-terminal-0.4)
                      ("rust-jobserver" ,rust-jobserver-0.1)
                      ("rust-jsonwebtoken" ,rust-jsonwebtoken-9)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libmount" ,rust-libmount-0.1)
                      ("rust-linked-hash-map" ,rust-linked-hash-map-0.5)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-memmap2" ,rust-memmap2-0.9)
                      ("rust-mime" ,rust-mime-0.3)
                      ("rust-nix" ,rust-nix-0.27)
                      ("rust-num-cpus" ,rust-num-cpus-1)
                      ("rust-number-prefix" ,rust-number-prefix-0.4)
                      ("rust-object" ,rust-object-0.32)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-opendal" ,rust-opendal-0.45)
                      ("rust-openssl" ,rust-openssl-0.10)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-reqsign" ,rust-reqsign-0.14)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-retry" ,rust-retry-2)
                      ("rust-rouille" ,rust-rouille-3)
                      ("rust-semver" ,rust-semver-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha2" ,rust-sha2-0.10)
                      ("rust-strip-ansi-escapes" ,rust-strip-ansi-escapes-0.2)
                      ("rust-syslog" ,rust-syslog-6)
                      ("rust-tar" ,rust-tar-0.4)
                      ("rust-tempfile" ,rust-tempfile-3)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-serde" ,rust-tokio-serde-0.8)
                      ("rust-tokio-util" ,rust-tokio-util-0.7)
                      ("rust-toml" ,rust-toml-0.8)
                      ("rust-tower" ,rust-tower-0.4)
                      ("rust-url" ,rust-url-2)
                      ("rust-uuid" ,rust-uuid-1)
                      ("rust-version-compare" ,rust-version-compare-0.1)
                      ("rust-walkdir" ,rust-walkdir-2)
                      ("rust-which" ,rust-which-6)
		      ("rust-winapi" ,rust-winapi-0.3)
                      ("rust-zip" ,rust-zip-0.6)
                      ("rust-zstd" ,rust-zstd-0.13))
      #:cargo-development-inputs (("rust-assert-cmd" ,rust-assert-cmd-2)
                                  ("rust-cc" ,rust-cc-1)
                                  ("rust-chrono" ,rust-chrono-0.4)
                                  ("rust-filetime" ,rust-filetime-0.2)
                                  ("rust-itertools" ,rust-itertools-0.12)
                                  ("rust-predicates" ,rust-predicates-3)
                                  ("rust-serial-test" ,rust-serial-test-2)
                                  ("rust-temp-env" ,rust-temp-env-0.3)
                                  ("rust-test-case" ,rust-test-case-3)
                                  ("rust-thirtyfour-sync" ,rust-thirtyfour-sync-0.27))))
   (native-inputs
    (list pkg-config cmake))
   (inputs
    (list openssl))
   (home-page "https://github.com/mozilla/sccache/")
   (synopsis
    "Sccache is a ccache-like tool. It is used as a compiler wrapper and avoids compilation when possible. Sccache has the capability to utilize caching in remote storage environments, including various cloud storage options, or alternatively, in local storage.")
   (description
    "Sccache is a ccache-like tool.  It is used as a compiler wrapper and avoids
compilation when possible.  Sccache has the capability to utilize caching in
remote storage environments, including various cloud storage options, or
alternatively, in local storage.")
   (license license:asl2.0)))

rust-sccache-0.8
