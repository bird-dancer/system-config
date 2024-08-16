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

(define-public rust-mockall-derive-0.13
  (package
   (name "rust-mockall-derive")
   (version "0.13.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mockall_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0810zddxlccc4kx6pjb24q9agzjf4h5l1iyv3yd4wc9hypki841l"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/asomers/mockall")
   (synopsis "Procedural macros for Mockall")
   (description "This package provides Procedural macros for Mockall.")
   (license (list license:expat license:asl2.0))))

(define-public rust-mockall-0.13
  (package
   (name "rust-mockall")
   (version "0.13.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mockall" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0nh6ghj46h4p7923mq6dycfdl7v1xr3cs9p8426d4lypnqzqphnl"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-downcast" ,rust-downcast-0.11)
                      ("rust-fragile" ,rust-fragile-2)
                      ("rust-mockall-derive" ,rust-mockall-derive-0.13)
                      ("rust-predicates" ,rust-predicates-3)
                      ("rust-predicates-tree" ,rust-predicates-tree-1))))
   (home-page "https://github.com/asomers/mockall")
   (synopsis "powerful mock object library for Rust.")
   (description
    "This package provides a powerful mock object library for Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-arraydeque-0.5
  (package
   (name "rust-arraydeque")
   (version "0.5.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "arraydeque" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0dn2xdfg3rkiqsh8a6achnmvf5nf11xk33xgjzpksliab4yjx43x"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/andylokandy/arraydeque")
   (synopsis
    "ring buffer with a fixed capacity, which can be stored on the stack.")
   (description
    "This package provides a ring buffer with a fixed capacity, which can be stored
on the stack.")
   (license (list license:expat license:asl2.0))))

(define-public rust-yaml-rust2-0.8
  (package
   (name "rust-yaml-rust2")
   (version "0.8.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "yaml-rust2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1y0mf6n1jnf88xqfv5ppicnm5jg3fl57dmp9vd2v2bvg9q61c0l9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arraydeque" ,rust-arraydeque-0.5)
                      ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                      ("rust-hashlink" ,rust-hashlink-0.8))))
   (home-page "https://github.com/Ethiraric/yaml-rust2")
   (synopsis "fully YAML 1.2 compliant YAML parser")
   (description
    "This package provides a fully YAML 1.2 compliant YAML parser.")
   (license (list license:expat license:asl2.0))))

(define-public rust-which-6
  (package
   (name "rust-which")
   (version "6.0.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "which" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0xah27xv2c0zrr2kf7mvj1m0046j8d9j49xnngnif7zfd3b5x71x"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-either" ,rust-either-1)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-rustix" ,rust-rustix-0.38)
                      ("rust-tracing" ,rust-tracing-0.1))))
   (home-page "https://github.com/harryfei/which-rs.git")
   (synopsis
    "Rust equivalent of Unix command \"which\". Locate installed executable in cross platforms.")
   (description
    "This package provides a Rust equivalent of Unix command \"which\".  Locate
installed executable in cross platforms.")
   (license license:expat)))

(define-public rust-itertools-0.13
  (package
   (name "rust-itertools")
   (version "0.13.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "itertools" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11hiy3qzl643zcigknclh446qb9zlg4dpdzfkjaa9q9fqpgyfgj1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-either" ,rust-either-1))))
   (home-page "https://github.com/rust-itertools/itertools")
   (synopsis
    "Extra iterator adaptors, iterator methods, free functions, and macros")
   (description
    "This package provides Extra iterator adaptors, iterator methods, free functions, and macros.")
   (license (list license:expat license:asl2.0))))

(define-public rust-versions-6
  (package
   (name "rust-versions")
   (version "6.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "versions" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1557d7zfabiym9b61724dkinhvic7j3imsk995sk43m2f88qvhjz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-itertools" ,rust-itertools-0.13)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/fosskers/rs-versions")
   (synopsis "library for parsing and comparing software version numbers.")
   (description
    "This package provides a library for parsing and comparing software version
numbers.")
   (license license:expat)))

(define-public rust-unicode-width-0.1
  (package
   (name "rust-unicode-width")
   (version "0.1.13")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "unicode-width" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0p92vl8n7qc8mxz45xn6qbgi0259z96n32a158l6vj5bywwdadh3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                      ("rust-rustc-std-workspace-std" ,rust-rustc-std-workspace-std-1))))
   (home-page "https://github.com/unicode-rs/unicode-width")
   (synopsis "Determine displayed width of `char` and `str` types
according to Unicode Standard Annex #11 rules.")
   (description
    "This package provides Determine displayed width of `char` and `str` types according to Unicode
Standard Annex #11 rules.")
   (license (list license:expat license:asl2.0))))

(define-public rust-winnow-0.6
  (package
   (name "rust-winnow")
   (version "0.6.18")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "winnow" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0vrsrnf2nm9jsk1161x1vacmi3ns4h3h10fib91rs28zd6jbvab8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anstream" ,rust-anstream-0.3)
                      ("rust-anstyle" ,rust-anstyle-1)
                      ("rust-is-terminal" ,rust-is-terminal-0.4)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-terminal-size" ,rust-terminal-size-0.2))))
   (home-page "https://github.com/winnow-rs/winnow")
   (synopsis "byte-oriented, zero-copy, parser combinators library")
   (description
    "This package provides a byte-oriented, zero-copy, parser combinators library.")
   (license license:expat)))

(define-public rust-toml-edit-0.22
  (package
   (name "rust-toml-edit")
   (version "0.22.20")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "toml_edit" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "07ffw4626k6abicjxb2idh12f1p5fn965zk660zhqsyj5b048g2q"))))
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
   (synopsis "Yet another format-preserving TOML parser")
   (description
    "This package provides Yet another format-preserving TOML parser.")
   (license (list license:expat license:asl2.0))))

(define-public rust-toml-datetime-0.6
  (package
   (name "rust-toml-datetime")
   (version "0.6.8")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "toml_datetime" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0hgv7v9g35d7y9r2afic58jvlwnf73vgd1mz2k8gihlgrf73bmqd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/toml-rs/toml")
   (synopsis "TOML-compatible datetime type")
   (description "This package provides a TOML-compatible datetime type.")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-spanned-0.6
  (package
   (name "rust-serde-spanned")
   (version "0.6.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_spanned" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0v9h2nlg8r7n7dkbgj1aw59g35kl869l652wc6zi2f4zawqinnzb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/toml-rs/toml")
   (synopsis "Serde-compatible spanned Value")
   (description "This package provides Serde-compatible spanned Value.")
   (license (list license:expat license:asl2.0))))

(define-public rust-toml-0.8
  (package
   (name "rust-toml")
   (version "0.8.19")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "toml" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0knjd3mkxyb87qcs2dark3qkpadidap3frqfj5nqvhpxwfc1zvd1"))))
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
    "native Rust encoder and decoder of TOML-formatted files and streams. Provides
implementations of the standard Serialize/Deserialize traits for TOML data to
facilitate deserializing and serializing Rust structures.")
   (description
    "This package provides a native Rust encoder and decoder of TOML-formatted files
and streams.  Provides implementations of the standard Serialize/Deserialize
traits for TOML data to facilitate deserializing and serializing Rust
structures.")
   (license (list license:expat license:asl2.0))))

(define-public rust-systemstat-0.2
  (package
   (name "rust-systemstat")
   (version "0.2.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "systemstat" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1lhbbgywmhfdb2vjaxzl9g3dbbz2nyfyzqr8kacq6b1im4jfqjm2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytesize" ,rust-bytesize-1)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-time" ,rust-time-0.3)
                      )))
   (home-page "https://github.com/valpackett/systemstat")
   (synopsis "Get system information/statistics in a cross-platform way")
   (description
    "This package provides Get system information/statistics in a cross-platform way.")
   (license license:unlicense)))

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
OSA, Damerau-Levenshtein, Jaro, Jaro-Winkler, and SÃ¸rensen-Dice.")
   (description
    "This package provides Implementations of string similarity metrics.  Includes Hamming, Levenshtein,
OSA, Damerau-Levenshtein, Jaro, Jaro-Winkler, and SÃ¸rensen-Dice.")
   (license license:expat)))

(define-public rust-uom-0.36
  (package
   (name "rust-uom")
   (version "0.36.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "uom" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "176dszv02ki1a49hvv2nkszjcn4m8ccfjgh5hhji2pd6a19nxlzz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-num-bigint" ,rust-num-bigint-0.4)
                      ("rust-num-complex" ,rust-num-complex-0.4)
                      ("rust-num-rational" ,rust-num-rational-0.4)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-typenum" ,rust-typenum-1))))
   (home-page "https://github.com/iliekturtles/uom")
   (synopsis "Units of measurement")
   (description "This package provides Units of measurement.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-quick-xml-0.32
  (package
   (name "rust-quick-xml")
   (version "0.32.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "quick-xml" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1hk9x4fij5kq1mnn7gmxz1hpv8s9wnnj4gx4ly7hw3mn71c6wfhx"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/tafia/quick-xml")
   (synopsis "High performance xml reader and writer")
   (description
    "This package provides High performance xml reader and writer.")
   (license license:expat)))

(define-public rust-plist-1
  (package
   (name "rust-plist")
   (version "1.7.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "plist" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "05hh3s44km2hyig48xjq580mj6s1r4yijzf6dcwmy3w0l7ligks2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-base64" ,rust-base64-0.22)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-quick-xml" ,rust-quick-xml-0.32)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-time" ,rust-time-0.3))))
   (home-page "https://github.com/ebarnard/rust-plist/")
   (synopsis "rusty plist parser. Supports Serde serialization.")
   (description
    "This package provides a rusty plist parser.  Supports Serde serialization.")
   (license license:expat)))

(define-public rust-starship-battery-0.9
  (package
   (name "rust-starship-battery")
   (version "0.9.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "starship-battery" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0gzldhpfhqh12wgrahfdl2vma3qmrv434c4xcj7qndclcxs1ayfs"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-core-foundation" ,rust-core-foundation-0.9)
                      ("rust-lazycell" ,rust-lazycell-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-mach2" ,rust-mach2-0.4)
                      ("rust-nix" ,rust-nix-0.29)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-plist" ,rust-plist-1)
                      ("rust-schemars" ,rust-schemars-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-uom" ,rust-uom-0.36))))
   (home-page "https://github.com/starship/rust-battery")
   (synopsis "Cross-platform information about the notebook batteries")
   (description
    "This package provides Cross-platform information about the notebook batteries.")
   (license license:isc)))

(define-public rust-libgit2-sys-0.17
  (package
   (name "rust-libgit2-sys")
   (version "0.17.0+1.8.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libgit2-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "093jxfl2i9vxdlgf7vk9d040sjwy0nq4fid640y7qix6m0k26iqh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libssh2-sys" ,rust-libssh2-sys-0.3)
                      ("rust-libz-sys" ,rust-libz-sys-1)
                      ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                      ("rust-pkg-config" ,rust-pkg-config-0.3))))
   (home-page "https://github.com/rust-lang/git2-rs")
   (synopsis "Native bindings to the libgit2 library")
   (description
    "This package provides Native bindings to the libgit2 library.")
   (license (list license:expat license:asl2.0))))

(define-public rust-git2-0.19
  (package
   (name "rust-git2")
   (version "0.19.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "git2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "091pv7866z1qjq800ys0wjv8n73wrv7fqdrddxcnq36w8lzbf0xr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libgit2-sys" ,rust-libgit2-sys-0.17)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-openssl-probe" ,rust-openssl-probe-0.1)
                      ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://github.com/rust-lang/git2-rs")
   (synopsis
    "Bindings to libgit2 for interoperating with git repositories. This library is
both threadsafe and memory safe and allows both reading and writing git
repositories.")
   (description
    "This package provides Bindings to libgit2 for interoperating with git repositories.  This library is
both threadsafe and memory safe and allows both reading and writing git
repositories.")
   (license (list license:expat license:asl2.0))))

(define-public rust-shadow-rs-0.30
  (package
   (name "rust-shadow-rs")
   (version "0.30.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "shadow-rs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ig85c3ankac8acsj67bmava0hp69abmgnv5x5hh3gnlh53falyj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-const-format" ,rust-const-format-0.2)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-git2" ,rust-git2-0.19)
                      ("rust-is-debug" ,rust-is-debug-1)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-tzdb" ,rust-tzdb-0.6))))
   (home-page "https://github.com/baoyachi/shadow-rs")
   (synopsis "build-time information stored in your rust project")
   (description
    "This package provides a build-time information stored in your rust project.")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-json-1
  (package
   (name "rust-serde-json")
   (version "1.0.122")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_json" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1nk8phyvwmhrmcbwdr8rbjd9bqp8np62dcbnhisgymqwjl1n4jvq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-ryu" ,rust-ryu-1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/serde-rs/json")
   (synopsis "JSON serialization file format")
   (description "This package provides a JSON serialization file format.")
   (license (list license:expat license:asl2.0))))

(define-public rust-semver-1
  (package
   (name "rust-semver")
   (version "1.0.23")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "semver" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "12wqpxfflclbq4dv8sa6gchdh92ahhwn4ci1ls22wlby3h57wsb1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/dtolnay/semver")
   (synopsis "Parser and evaluator for Cargo's flavor of Semantic Versioning")
   (description
    "This package provides Parser and evaluator for Cargo's flavor of Semantic Versioning.")
   (license (list license:expat license:asl2.0))))

(define-public rust-schemars-derive-0.8
  (package
   (name "rust-schemars-derive")
   (version "0.8.21")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "schemars_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "03ncmrkldfmdc9skmlyysx2vqdlyyz91r5mbavw77zwaay4fbvmi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-serde-derive-internals" ,rust-serde-derive-internals-0.29)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://graham.cool/schemars/")
   (synopsis "Macros for #[derive(JsonSchema)], for use with schemars")
   (description
    "This package provides Macros for #[derive(@code{JsonSchema})], for use with schemars.")
   (license license:expat)))

(define-public rust-schemars-0.8
  (package
   (name "rust-schemars")
   (version "0.8.21")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "schemars" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "14lyx04388wgbilgcm0nl75w6359nw16glswfqv7x2rpi9329h09"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.5)
                      ("rust-arrayvec" ,rust-arrayvec-0.7)
                      ("rust-bigdecimal" ,rust-bigdecimal-0.4)
                      ("rust-bigdecimal" ,rust-bigdecimal-0.3)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-dyn-clone" ,rust-dyn-clone-1)
                      ("rust-either" ,rust-either-1)
                      ("rust-enumset" ,rust-enumset-1)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-indexmap" ,rust-indexmap-1)
                      ("rust-rust-decimal" ,rust-rust-decimal-1)
                      ("rust-schemars-derive" ,rust-schemars-derive-0.8)
                      ("rust-semver" ,rust-semver-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-smol-str" ,rust-smol-str-0.1)
                      ("rust-url" ,rust-url-2)
                      ("rust-uuid" ,rust-uuid-0.8)
                      ("rust-uuid" ,rust-uuid-1))))
   (home-page "https://graham.cool/schemars/")
   (synopsis "Generate JSON Schemas from Rust code")
   (description "This package provides Generate JSON Schemas from Rust code.")
   (license license:expat)))

(define-public rust-trim-in-place-0.1
  (package
   (name "rust-trim-in-place")
   (version "0.1.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "trim-in-place" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1z04g79xkrpf3h4g3cc8wax72dn6h6v9l4m39zg8rg39qrpr4gil"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://magiclen.org/trim-in-place")
   (synopsis "In-place trimming strings")
   (description "This package provides In-place trimming strings.")
   (license license:expat)))

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
   (description
    "This package provides Semi-doubly linked list implemented using a vector.")
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
   (description "This package provides Insertion ordered multimap.")
   (license license:expat)))

(define-public rust-rust-ini-0.21
  (package
   (name "rust-rust-ini")
   (version "0.21.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rust-ini" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0hav0am43zl2zwbwbcdh1vvczb8zlzhl4k2iz9nayjcggpamwqhd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-ordered-multimap" ,rust-ordered-multimap-0.7)
                      ("rust-trim-in-place" ,rust-trim-in-place-0.1)
                      ("rust-unicase" ,rust-unicase-2))))
   (home-page "https://github.com/zonyitoo/rust-ini")
   (synopsis "An Ini configuration file parsing library in Rust")
   (description
    "This package provides An Ini configuration file parsing library in Rust.")
   (license license:expat)))

(define-public rust-regex-1
  (package
   (name "rust-regex")
   (version "1.10.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "regex" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "06cnlxwzyqfbw1za1i7ks89ns4i2kr0lpg5ykx56b8v7dd6df6a2"))))
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
finite automata and guarantees linear time matching on all inputs.")
   (description
    "This package provides An implementation of regular expressions for Rust.  This implementation uses
finite automata and guarantees linear time matching on all inputs.")
   (license (list license:expat license:asl2.0))))

(define-public rust-quick-xml-0.36
  (package
   (name "rust-quick-xml")
   (version "0.36.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "quick-xml" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1g0p8h4hxz2ymiyd71mn862nrj7s0g1wwiyahhdabpzxiqp5x84n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-tokio" ,rust-tokio-1))))
   (home-page "https://github.com/tafia/quick-xml")
   (synopsis "High performance xml reader and writer")
   (description
    "This package provides High performance xml reader and writer.")
   (license license:expat)))

(define-public rust-process-control-4
  (package
   (name "rust-process-control")
   (version "4.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "process_control" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0vzvg9s5l4qb3c823qr9rx4s97jsdm3cyqsfi7p709sb9963662d"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-signal-hook" ,rust-signal-hook-0.3))))
   (home-page "https://github.com/dylni/process_control")
   (synopsis "Ergonomically run processes with limits")
   (description
    "This package provides Ergonomically run processes with limits.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-worktree-0.17
  (package
   (name "rust-gix-worktree")
   (version "0.17.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-worktree" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ymaflcvd7m1s1wsplrgzk42d9qgwmdaw0hgqhvrsflpmvqaz7m6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-filetime" ,rust-filetime-0.2)
                      ("rust-gix-attributes" ,rust-gix-attributes-0.12)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-fs" ,rust-gix-fs-0.1)
                      ("rust-gix-glob" ,rust-gix-glob-0.7)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-ignore" ,rust-gix-ignore-0.2)
                      ("rust-gix-index" ,rust-gix-index-0.16)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-io-close" ,rust-io-close-0.3)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project for shared worktree related types and utilities.")
   (description
    "This package provides a crate of the gitoxide project for shared worktree
related types and utilities.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-revision-0.13
  (package
   (name "rust-gix-revision")
   (version "0.13.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-revision" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0xjlwccvjc8f4krkzqfj4wqkaqn1z4wv4j6ksncskk7cmzlka3w1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-date" ,rust-gix-date-0.5)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.2)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project dealing with finding names for revisions and parsing specifications")
   (description
    "This package provides a crate of the gitoxide project dealing with finding names
for revisions and parsing specifications.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-refspec-0.10
  (package
   (name "rust-gix-refspec")
   (version "0.10.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-refspec" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "14jq8wad6mn48gcmjz2vix6q41brf89fnzbrsx67xxhdh8rsfvha"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-revision" ,rust-gix-revision-0.13)
                      ("rust-gix-validate" ,rust-gix-validate-0.7)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project for parsing and representing refspecs")
   (description
    "This package provides a crate of the gitoxide project for parsing and
representing refspecs.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-transport-0.31
  (package
   (name "rust-gix-transport")
   (version "0.31.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-transport" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "00h1j14vds68jcqvbr0v2042w1w0kryzqdgnbrlpkil9p7vjn77h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-base64" ,rust-base64-0.21)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-curl" ,rust-curl-0.4)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-1)
                      ("rust-gix-command" ,rust-gix-command-0.2)
                      ("rust-gix-credentials" ,rust-gix-credentials-0.14)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-packetline" ,rust-gix-packetline-0.16)
                      ("rust-gix-quote" ,rust-gix-quote-0.4)
                      ("rust-gix-sec" ,rust-gix-sec-0.8)
                      ("rust-gix-url" ,rust-gix-url-0.18)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project dedicated to implementing the git transport layer")
   (description
    "This package provides a crate of the gitoxide project dedicated to implementing
the git transport layer.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-protocol-0.32
  (package
   (name "rust-gix-protocol")
   (version "0.32.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-protocol" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0fhyjqyxxv032ilp0wpr13pljbwb1yms5ngpqbdz8c0pgx0ljzl7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-btoi" ,rust-btoi-0.4)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-1)
                      ("rust-gix-credentials" ,rust-gix-credentials-0.14)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-transport" ,rust-gix-transport-0.31)
                      ("rust-maybe-async" ,rust-maybe-async-0.2)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project for implementing git protocols")
   (description
    "This package provides a crate of the gitoxide project for implementing git
protocols.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-pack-0.35
  (package
   (name "rust-gix-pack")
   (version "0.35.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-pack" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "087z8ns27ijsg9fm7yqkj7is5rxyalb783m89ap5fcm801cm2jhn"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-clru" ,rust-clru-0.6)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-chunk" ,rust-gix-chunk-0.4)
                      ("rust-gix-diff" ,rust-gix-diff-0.29)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.2)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-tempfile" ,rust-gix-tempfile-5)
                      ("rust-gix-traverse" ,rust-gix-traverse-0.25)
                      ("rust-memmap2" ,rust-memmap2-0.5)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-uluru" ,rust-uluru-3))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Implements git packs and related data structures")
   (description
    "This package implements git packs and related data structures.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-odb-0.45
  (package
   (name "rust-gix-odb")
   (version "0.45.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-odb" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1pasbrgh2g6fbpgw3r30s8lp0spbjqzsj3rc1xnjnrv7m8jg78mw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-gix-pack" ,rust-gix-pack-0.35)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-quote" ,rust-gix-quote-0.4)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-tempfile" ,rust-tempfile-3)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Implements various git object databases")
   (description "This package implements various git object databases.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-mailmap-0.12
  (package
   (name "rust-gix-mailmap")
   (version "0.12.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-mailmap" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0qpk60k3zlnb93naiy8wc8hnc30an9n8plkhd7010dnw7gn6r1g8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.20)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project for parsing mailmap files")
   (description
    "This package provides a crate of the gitoxide project for parsing mailmap files.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-traverse-0.25
  (package
   (name "rust-gix-traverse")
   (version "0.25.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-traverse" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1l8d59p1hb7nl2132yqnibnl7sychqc12xah02xk7318gy01xgm5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.2)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project")
   (description "This package provides a crate of the gitoxide project.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-index-0.16
  (package
   (name "rust-gix-index")
   (version "0.16.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-index" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1fmkz97c7dr7jk06p99a0jc0a3azpj6w5vwia6ywn4hriz61r77k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-btoi" ,rust-btoi-0.4)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-filetime" ,rust-filetime-0.2)
                      ("rust-gix-bitmap" ,rust-gix-bitmap-0.2)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-lock" ,rust-gix-lock-5)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-gix-traverse" ,rust-gix-traverse-0.25)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-memmap2" ,rust-memmap2-0.5)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "work-in-progress crate of the gitoxide project dedicated implementing the git index file")
   (description
    "This package provides a work-in-progress crate of the gitoxide project dedicated
implementing the git index file.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-ignore-0.2
  (package
   (name "rust-gix-ignore")
   (version "0.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-ignore" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ch5k8qch2r78z1s4syqzkywaipbh96868mvd1kr1qk3ymnmn85s"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-glob" ,rust-gix-glob-0.7)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-unicode-bom" ,rust-unicode-bom-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing .gitignore files")
   (description
    "This package provides a crate of the gitoxide project dealing .gitignore files.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-discover-0.18
  (package
   (name "rust-gix-discover")
   (version "0.18.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-discover" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1h2z19zz168cjfjyn89yi3cb7gby4nqar5kg7smcvrv37qv62sqs"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ;; ("rust-dunce" ,rust-dunce-1)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-ref" ,rust-gix-ref-0.29)
                      ("rust-gix-sec" ,rust-gix-sec-0.8)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "Discover git repositories and check if a directory is a git repository")
   (description
    "This package provides Discover git repositories and check if a directory is a git repository.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-diff-0.29
  (package
   (name "rust-gix-diff")
   (version "0.29.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-diff" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11hixn1xy0kj6391b8y6xz58ki8mkq6aibc9jakdfhmwd0khyjk4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-imara-diff" ,rust-imara-diff-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Calculate differences between various git objects")
   (description
    "This package provides Calculate differences between various git objects.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-url-0.18
  (package
   (name "rust-gix-url")
   (version "0.18.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-url" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0xlbyyhbjp83sx5s8hppbr5mazh2njxg2c8y960wr5s20n4pziyz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project implementing parsing and serialization of gix-url")
   (description
    "This package provides a crate of the gitoxide project implementing parsing and
serialization of gix-url.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-credentials-0.14
  (package
   (name "rust-gix-credentials")
   (version "0.14.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-credentials" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zz5bmsgakf3bbqsrwbyawxsfc6sgfancymqqail9a7z27ya8x28"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-command" ,rust-gix-command-0.2)
                      ("rust-gix-config-value" ,rust-gix-config-value-0.12)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-prompt" ,rust-gix-prompt-0.5)
                      ("rust-gix-sec" ,rust-gix-sec-0.8)
                      ("rust-gix-url" ,rust-gix-url-0.18)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project to interact with git credentials helpers")
   (description
    "This package provides a crate of the gitoxide project to interact with git
credentials helpers.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-object-0.29
  (package
   (name "rust-gix-object")
   (version "0.29.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-object" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1kk1wbcv6p71ysvyibf6y6s03c50ry1j22zp6zfwr2nh1xibv5id"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-btoi" ,rust-btoi-0.4)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.20)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-validate" ,rust-gix-validate-0.7)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "Immutable and mutable git objects with decoding and encoding support")
   (description
    "This package provides Immutable and mutable git objects with decoding and encoding support.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-tempfile-5
  (package
   (name "rust-gix-tempfile")
   (version "5.0.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-tempfile" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "10pivlx6a5yph3jnsj6h0p3ap3fpxz52ahhjhrjyhwafycr0s6np"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-dashmap" ,rust-dashmap-5)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-fs" ,rust-gix-fs-0.1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-signal-hook" ,rust-signal-hook-0.3)
                      ("rust-signal-hook-registry" ,rust-signal-hook-registry-1)
                      ("rust-tempfile" ,rust-tempfile-3))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "tempfile implementation with a global registry to assure cleanup")
   (description
    "This package provides a tempfile implementation with a global registry to assure
cleanup.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-lock-5
  (package
   (name "rust-gix-lock")
   (version "5.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-lock" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0m8m26w2c0pqf835zihhhi8r78yfqynm0wa6gi5af3vk0mzkss9c"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gix-tempfile" ,rust-gix-tempfile-5)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "git-style lock-file implementation")
   (description "This package provides a git-style lock-file implementation.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-fs-0.1
  (package
   (name "rust-gix-fs")
   (version "0.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-fs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1abqc9hh5s7r65p8rily3xy764z4lbwnglhbj44xq7v95y1s2dwv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gix-features" ,rust-gix-features-0.29))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate providing file system specific utilities to `gitoxide`")
   (description
    "This package provides a crate providing file system specific utilities to
`gitoxide`.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-ref-0.29
  (package
   (name "rust-gix-ref")
   (version "0.29.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-ref" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1m8mgrqxx8cvkvkzpkaacg8qjwgw6215f9mmw5l475a9kng9h0qy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.20)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-fs" ,rust-gix-fs-0.1)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-lock" ,rust-gix-lock-5)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-tempfile" ,rust-gix-tempfile-5)
                      ("rust-gix-validate" ,rust-gix-validate-0.7)
                      ("rust-memmap2" ,rust-memmap2-0.5)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate to handle git references")
   (description "This package provides a crate to handle git references.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-config-0.22
  (package
   (name "rust-gix-config")
   (version "0.22.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-config" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1haakps85dh5sw8h84a3vakkb279kzf7521x1mh79pxnvl72l98x"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-config-value" ,rust-gix-config-value-0.12)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-glob" ,rust-gix-glob-0.7)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-ref" ,rust-gix-ref-0.29)
                      ("rust-gix-sec" ,rust-gix-sec-0.8)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unicode-bom" ,rust-unicode-bom-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "git-config file parser and editor from the gitoxide project")
   (description
    "This package provides a git-config file parser and editor from the gitoxide
project.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-glob-0.7
  (package
   (name "rust-gix-glob")
   (version "0.7.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-glob" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0am74xk2ch4j73ghi41lqyjd54r5hl558m27ncj3zb198lh9hz60"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing with pattern matching")
   (description
    "This package provides a crate of the gitoxide project dealing with pattern
matching.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-attributes-0.12
  (package
   (name "rust-gix-attributes")
   (version "0.12.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-attributes" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1qh5k11wchkw410q3b0jxjvvfgk0ga2kr1mpmay2y4nj3ahbl59h"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-glob" ,rust-gix-glob-0.7)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-quote" ,rust-gix-quote-0.4)
                      ("rust-kstring" ,rust-kstring-2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unicode-bom" ,rust-unicode-bom-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing .gitattributes files")
   (description
    "This package provides a crate of the gitoxide project dealing .gitattributes
files.")
   (license (list license:expat license:asl2.0))))

(define-public rust-tui-react-0.19
  (package
   (name "rust-tui-react")
   (version "0.19.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tui-react" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0kcgci93f8kxmvdydjkc9hcj80cbba2gg4b8m2pds0dgk8q3fb2l"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-log" ,rust-log-0.4)
                      ("rust-tui" ,rust-tui-0.19)
                      ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                      ("rust-unicode-width" ,rust-unicode-width-0.1))))
   (home-page "https://github.com/Byron/tui-crates")
   (synopsis
    "TUI widgets using a react-like paradigm, allowing mutable component state and render properties")
   (description
    "This package provides TUI widgets using a react-like paradigm, allowing mutable component state and
render properties.")
   (license license:expat)))

(define-public rust-crosstermion-0.10
  (package
   (name "rust-crosstermion")
   (version "0.10.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "crosstermion" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "017dmqfw6qngjac089nq8394pzx9ym3gn3zkjwkggmf20advvalr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ansi-term" ,rust-ansi-term-0.12)
                      ("rust-async-channel" ,rust-async-channel-1)
                      ("rust-crossterm" ,rust-crossterm-0.25)
                      ("rust-futures-channel" ,rust-futures-channel-0.3)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-1)
                      ("rust-termion" ,rust-termion-1)
                      ("rust-tui" ,rust-tui-0.19)
                      ("rust-tui-react" ,rust-tui-react-0.19))))
   (home-page "https://github.com/Byron/tui-crates")
   (synopsis "utilities for `crossterm`, without ties to `termion`")
   (description
    "This package provides utilities for `crossterm`, without ties to `termion`.")
   (license license:expat)))

(define-public rust-prodash-23
  (package
   (name "rust-prodash")
   (version "23.1.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "prodash" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0b9rg3wva4x5q3957r3la04lbq0d1j64pk8rbscfihvbcmsvf5lm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-io" ,rust-async-io-1)
                      ("rust-atty" ,rust-atty-0.2)
                      ("rust-bytesize" ,rust-bytesize-1)
                      ("rust-compound-duration" ,rust-compound-duration-1)
                      ("rust-crosstermion" ,rust-crosstermion-0.10)
                      ("rust-ctrlc" ,rust-ctrlc-3)
                      ("rust-dashmap" ,rust-dashmap-5)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-1)
                      ("rust-human-format" ,rust-human-format-1)
                      ("rust-humantime" ,rust-humantime-2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-signal-hook" ,rust-signal-hook-0.3)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-tui" ,rust-tui-0.19)
                      ("rust-tui-react" ,rust-tui-react-0.19)
                      ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                      ("rust-unicode-width" ,rust-unicode-width-0.1))))
   (home-page "https://github.com/Byron/prodash")
   (synopsis
    "dashboard for visualizing progress of asynchronous and possibly blocking tasks")
   (description
    "This package provides a dashboard for visualizing progress of asynchronous and
possibly blocking tasks.")
   (license license:expat)))

(define-public rust-gix-features-0.29
  (package
   (name "rust-gix-features")
   (version "0.29.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-features" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "15zqli3vrygaap9n5258gi1zcs3nj1qvc11j5pi3mk01qzsv0sfg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-bytesize" ,rust-bytesize-1)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-jwalk" ,rust-jwalk-0.8)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-prodash" ,rust-prodash-23)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-sha1-smol" ,rust-sha1-smol-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-walkdir" ,rust-walkdir-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate to integrate various capabilities using compile-time feature flags")
   (description
    "This package provides a crate to integrate various capabilities using
compile-time feature flags.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-actor-0.20
  (package
   (name "rust-gix-actor")
   (version "0.20.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-actor" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ww4ixdc5ssm94fz091mkr5sg63glj11qscmixisikhh287zm3l4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-btoi" ,rust-btoi-0.4)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-date" ,rust-gix-date-0.5)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-nom" ,rust-nom-7)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "way to identify git actors")
   (description "This package provides a way to identify git actors.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-0.44
  (package
   (name "rust-gix")
   (version "0.44.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0hy6rbqrwaci9r6ifmg6xmd2q0by3bxc0yd5yy254ffzyxhipx3b"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.20)
                      ("rust-gix-attributes" ,rust-gix-attributes-0.12)
                      ("rust-gix-config" ,rust-gix-config-0.22)
                      ("rust-gix-credentials" ,rust-gix-credentials-0.14)
                      ("rust-gix-date" ,rust-gix-date-0.5)
                      ("rust-gix-diff" ,rust-gix-diff-0.29)
                      ("rust-gix-discover" ,rust-gix-discover-0.18)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-gix-fs" ,rust-gix-fs-0.1)
                      ("rust-gix-glob" ,rust-gix-glob-0.7)
                      ("rust-gix-hash" ,rust-gix-hash-0.11)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.2)
                      ("rust-gix-ignore" ,rust-gix-ignore-0.2)
                      ("rust-gix-index" ,rust-gix-index-0.16)
                      ("rust-gix-lock" ,rust-gix-lock-5)
                      ("rust-gix-mailmap" ,rust-gix-mailmap-0.12)
                      ("rust-gix-object" ,rust-gix-object-0.29)
                      ("rust-gix-odb" ,rust-gix-odb-0.45)
                      ("rust-gix-pack" ,rust-gix-pack-0.35)
                      ("rust-gix-path" ,rust-gix-path-0.8)
                      ("rust-gix-prompt" ,rust-gix-prompt-0.5)
                      ("rust-gix-protocol" ,rust-gix-protocol-0.32)
                      ("rust-gix-ref" ,rust-gix-ref-0.29)
                      ("rust-gix-refspec" ,rust-gix-refspec-0.10)
                      ("rust-gix-revision" ,rust-gix-revision-0.13)
                      ("rust-gix-sec" ,rust-gix-sec-0.8)
                      ("rust-gix-tempfile" ,rust-gix-tempfile-5)
                      ("rust-gix-transport" ,rust-gix-transport-0.31)
                      ("rust-gix-traverse" ,rust-gix-traverse-0.25)
                      ("rust-gix-url" ,rust-gix-url-0.18)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-gix-validate" ,rust-gix-validate-0.7)
                      ("rust-gix-worktree" ,rust-gix-worktree-0.17)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-prodash" ,rust-prodash-23)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-reqwest" ,rust-reqwest-0.11)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-signal-hook" ,rust-signal-hook-0.3)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unicode-normalization" ,rust-unicode-normalization-0.1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Interact with git repositories just like git would")
   (description
    "This package provides Interact with git repositories just like git would.")
   (license (list license:expat license:asl2.0))))

(define-public rust-fwdansi-1
  (package
   (name "rust-fwdansi")
   (version "1.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "fwdansi" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "027jz2x5fbi6rskic8sd6xx0mn03a7dnhwkpyz8hamg8gxwgbh88"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-memchr" ,rust-memchr-2)
                      ("rust-termcolor" ,rust-termcolor-1))))
   (home-page "https://github.com/kennytm/fwdansi")
   (synopsis
    "Forwards a byte string with ANSI escape code to a termcolor terminal")
   (description
    "This package provides Forwards a byte string with ANSI escape code to a termcolor terminal.")
   (license license:expat)))

(define-public rust-crates-io-0.37
  (package
   (name "rust-crates-io")
   (version "0.37.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "crates-io" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0z65z08lz27s1yi7aw5nphlziyihb52a7ni3bvmz59gw9adscsl7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-curl" ,rust-curl-0.4)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://github.com/rust-lang/cargo")
   (synopsis "Helpers for interacting with crates.io")
   (description
    "This package provides Helpers for interacting with crates.io.")
   (license (list license:expat license:asl2.0))))

(define-public rust-cargo-0.72
  (package
   (name "rust-cargo")
   (version "0.72.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "cargo" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0fsq9mcsmnvl54a7ir7q5akcpnafk1hc4kmrl0g7g7hrldvcl6hp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-base64" ,rust-base64-0.21)
                      ("rust-bytesize" ,rust-bytesize-1)
                      ("rust-cargo-platform" ,rust-cargo-platform-0.1)
                      ("rust-cargo-util" ,rust-cargo-util-0.2)
                      ("rust-clap" ,rust-clap-4)
                      ("rust-crates-io" ,rust-crates-io-0.37)
                      ("rust-curl" ,rust-curl-0.4)
                      ("rust-curl-sys" ,rust-curl-sys-0.4)
                      ("rust-env-logger" ,rust-env-logger-0.10)
                      ("rust-filetime" ,rust-filetime-0.2)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-fwdansi" ,rust-fwdansi-1)
                      ("rust-git2" ,rust-git2-0.17)
                      ("rust-git2-curl" ,rust-git2-curl-0.18)
                      ("rust-gix" ,rust-gix-0.44)
                      ("rust-gix-features" ,rust-gix-features-0.29)
                      ("rust-glob" ,rust-glob-0.3)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-hmac" ,rust-hmac-0.12)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-http-auth" ,rust-http-auth-0.1)
                      ("rust-humantime" ,rust-humantime-2)
                      ("rust-ignore" ,rust-ignore-0.4)
                      ("rust-im-rc" ,rust-im-rc-15)
                      ("rust-indexmap" ,rust-indexmap-1)
                      ("rust-is-terminal" ,rust-is-terminal-0.4)
                      ("rust-itertools" ,rust-itertools-0.10)
                      ("rust-jobserver" ,rust-jobserver-0.1)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-lazycell" ,rust-lazycell-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-libgit2-sys" ,rust-libgit2-sys-0.15)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-opener" ,rust-opener-0.5)
                      ("rust-openssl" ,rust-openssl-0.10)
                      ("rust-os-info" ,rust-os-info-3)
                      ("rust-pasetors" ,rust-pasetors-0.6)
                      ("rust-pathdiff" ,rust-pathdiff-0.2)
                      ("rust-pretty-env-logger" ,rust-pretty-env-logger-0.4)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-rustfix" ,rust-rustfix-0.6)
                      ("rust-semver" ,rust-semver-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-value" ,rust-serde-value-0.7)
                      ("rust-serde-ignored" ,rust-serde-ignored-0.1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-shell-escape" ,rust-shell-escape-0.1)
                      ("rust-strip-ansi-escapes" ,rust-strip-ansi-escapes-0.1)
                      ("rust-tar" ,rust-tar-0.4)
                      ("rust-tar" ,rust-tar-0.4)
                      ("rust-tempfile" ,rust-tempfile-3)
                      ("rust-termcolor" ,rust-termcolor-1)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-toml" ,rust-toml-0.7)
                      ("rust-toml-edit" ,rust-toml-edit-0.19)
                      ("rust-unicode-width" ,rust-unicode-width-0.1)
                      ("rust-unicode-xid" ,rust-unicode-xid-0.2)
                      ("rust-url" ,rust-url-2)
                      ("rust-walkdir" ,rust-walkdir-2))))
   (home-page "https://doc.rust-lang.org/cargo/index.html")
   (synopsis "Cargo, a package manager for Rust.")
   (description "This package provides Cargo, a package manager for Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-pest-meta-2
  (package
   (name "rust-pest-meta")
   (version "2.7.11")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "pest_meta" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ksc295cyz9yxzsqvaaxfmmwrapzns2nfksyqbgbw23yxagl4hd9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cargo" ,rust-cargo-0.72)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-pest" ,rust-pest-2)
                      ("rust-sha2" ,rust-sha2-0.10))))
   (home-page "https://pest.rs/")
   (synopsis "pest meta language parser and validator")
   (description
    "This package provides pest meta language parser and validator.")
   (license (list license:expat license:asl2.0))))

(define-public rust-pest-generator-2
  (package
   (name "rust-pest-generator")
   (version "2.7.11")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "pest_generator" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "10vi0wbrxih85pghd1y2vkpnka68hyl5wkplpbf2amqlilpai4rw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-pest" ,rust-pest-2)
                      ("rust-pest-meta" ,rust-pest-meta-2)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://pest.rs/")
   (synopsis "pest code generator")
   (description "This package provides pest code generator.")
   (license (list license:expat license:asl2.0))))

(define-public rust-pest-derive-2
  (package
   (name "rust-pest-derive")
   (version "2.7.11")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "pest_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "16p49072arqm45l6j5blisjshj45rxpx6m254hf3nxx6xhmqsm1a"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-pest" ,rust-pest-2)
                      ("rust-pest-generator" ,rust-pest-generator-2))))
   (home-page "https://pest.rs/")
   (synopsis "pest's derive macro")
   (description "This package provides pest's derive macro.")
   (license (list license:expat license:asl2.0))))

(define-public rust-pest-2
  (package
   (name "rust-pest")
   (version "2.7.11")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "pest" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "15cxh3nc7yibzjn6dbndjkbhadhkry60jdx83kf5ywr67zwdylyd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-memchr" ,rust-memchr-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-ucd-trie" ,rust-ucd-trie-0.1))))
   (home-page "https://pest.rs/")
   (synopsis "The Elegant Parser")
   (description "This package provides The Elegant Parser.")
   (license (list license:expat license:asl2.0))))

(define-public rust-os-info-3
  (package
   (name "rust-os-info")
   (version "3.8.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "os_info" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "14hhnnln768z7zhdpc2rhqpmlmcg9y05w27cw6ppr36kdpxcg6df"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-log" ,rust-log-0.4)
                      ("rust-serde" ,rust-serde-1)
                      )))
   (home-page "https://github.com/stanislav-tkach/os_info")
   (synopsis "Detect the operating system type and version")
   (description
    "This package provides Detect the operating system type and version.")
   (license license:expat)))

(define-public rust-open-5
  (package
   (name "rust-open")
   (version "5.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "open" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1cy40lf0hk8b0pwm9ix5zi53m4lqnjgviw9ylm16cwdxdazpga31"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-is-wsl" ,rust-is-wsl-0.4)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-pathdiff" ,rust-pathdiff-0.2))))
   (home-page "https://github.com/Byron/open-rs")
   (synopsis "Open a path or URL using the program configured on the system")
   (description
    "This package provides Open a path or URL using the program configured on the system.")
   (license license:expat)))

(define-public rust-nu-ansi-term-0.50
  (package
   (name "rust-nu-ansi-term")
   (version "0.50.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "nu-ansi-term" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "16a3isvbxx8pa3lk71h3cq2fsx2d17zzq42j4mhpxy81gl2qx8nl"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1)
                      )))
   (home-page "https://github.com/nushell/nu-ansi-term")
   (synopsis "Library for ANSI terminal colors and styles (bold, underline)")
   (description
    "This package provides Library for ANSI terminal colors and styles (bold, underline).")
   (license license:expat)))

(define-public rust-zvariant-derive-4
  (package
   (name "rust-zvariant-derive")
   (version "4.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zvariant_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0jf408h0s83krxwm7wl62fnssin1kcklmb1bcn83ls6sddabmqkk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-3)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2)
                      ("rust-zvariant-utils" ,rust-zvariant-utils-2))))
   (home-page "https://github.com/dbus2/zbus/")
   (synopsis "D-Bus & GVariant encoding & decoding")
   (description "This package provides D-Bus & GVariant encoding & decoding.")
   (license license:expat)))

(define-public rust-uuid-macro-internal-1
  (package
   (name "rust-uuid-macro-internal")
   (version "1.10.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "uuid-macro-internal" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0flsk6rxdif2hx5dirfwfn6r5vrp6my9zvnn43lw98iyz13d077f"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/uuid-rs/uuid")
   (synopsis "Private implementation details of the uuid! macro")
   (description
    "This package provides Private implementation details of the uuid! macro.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-uuid-1
  (package
   (name "rust-uuid")
   (version "1.10.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "uuid" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0503gvp08dh5mnm3f0ffqgisj6x3mbs53dmnn1lm19pga43a1pw1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-atomic" ,rust-atomic-0.6)
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
                      ("rust-zerocopy" ,rust-zerocopy-0.7))))
   (home-page "https://github.com/uuid-rs/uuid")
   (synopsis "library to generate and parse UUIDs.")
   (description
    "This package provides a library to generate and parse UUIDs.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-serde-bytes-0.11
  (package
   (name "rust-serde-bytes")
   (version "0.11.15")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_bytes" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0sjwczchd9p4ak4m644jpkv4r181zr8yj14fdjll1fq6rc2caz1q"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/serde-rs/bytes")
   (synopsis "Optimized handling of `&[u8]` and `Vec<u8>` for Serde")
   (description
    "This package provides Optimized handling of `&[u8]` and `Vec<u8>` for Serde.")
   (license (list license:expat license:asl2.0))))

(define-public rust-endi-1
  (package
   (name "rust-endi")
   (version "1.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "endi" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1gxp388g2zzbncp3rdn60wxkr49xbhhx94nl9p4a6c41w4ma7n53"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/zeenix/endi")
   (synopsis "simple endian-handling library")
   (description "This package provides a simple endian-handling library.")
   (license license:expat)))

(define-public rust-zvariant-4
  (package
   (name "rust-zvariant")
   (version "4.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zvariant" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zl1ika7zd9bxkd0bqc78h9bykvk6xc98965iz1p3i51p452k110"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.7)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-endi" ,rust-endi-1)
                      ("rust-enumflags2" ,rust-enumflags2-0.7)
                      ("rust-heapless" ,rust-heapless-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-bytes" ,rust-serde-bytes-0.11)
                      ("rust-static-assertions" ,rust-static-assertions-1)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-url" ,rust-url-2)
                      ("rust-uuid" ,rust-uuid-1)
                      ("rust-zvariant-derive" ,rust-zvariant-derive-4))))
   (home-page "https://github.com/dbus2/zbus/")
   (synopsis "D-Bus & GVariant encoding & decoding")
   (description "This package provides D-Bus & GVariant encoding & decoding.")
   (license license:expat)))

(define-public rust-zbus-names-3
  (package
   (name "rust-zbus-names")
   (version "3.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zbus_names" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0v1f0ajwafj47bf11yp0xdgp26r93lslr9nb2v6624h2gppiz6sb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1)
                      ("rust-static-assertions" ,rust-static-assertions-1)
                      ("rust-zvariant" ,rust-zvariant-4))))
   (home-page "https://github.com/dbus2/zbus/")
   (synopsis "collection of D-Bus bus names types")
   (description
    "This package provides a collection of D-Bus bus names types.")
   (license license:expat)))

(define-public rust-zvariant-utils-2
  (package
   (name "rust-zvariant-utils")
   (version "2.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zvariant_utils" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0h43h3jcw8rmjr390rdqnhkb9nn3913pgkvb75am1frxrkvwy6y5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/dbus2/zbus/")
   (synopsis "Various utilities used internally by the zvariant crate")
   (description
    "This package provides Various utilities used internally by the zvariant crate.")
   (license license:expat)))

(define-public rust-syn-2
  (package
   (name "rust-syn")
   (version "2.0.72")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "syn" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1bx8wwx4ylyjz51dwd83b22j46wm3r3h80ic7wyhkn5dyadrnjyw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-unicode-ident" ,rust-unicode-ident-1))))
   (home-page "https://github.com/dtolnay/syn")
   (synopsis "Parser for Rust source code")
   (description "This package provides Parser for Rust source code.")
   (license (list license:expat license:asl2.0))))

(define-public rust-quote-1
  (package
   (name "rust-quote")
   (version "1.0.36")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "quote" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19xcmh445bg6simirnnd4fvkmp6v2qiwxh5f6rw4a70h76pnm9qg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1))))
   (home-page "https://github.com/dtolnay/quote")
   (synopsis "Quasi-quoting macro quote!(...)")
   (description "This package provides Quasi-quoting macro quote!(...).")
   (license (list license:expat license:asl2.0))))

(define-public rust-proc-macro2-1
  (package
   (name "rust-proc-macro2")
   (version "1.0.86")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "proc-macro2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0xrv22p8lqlfdf1w0pj4si8n2ws4aw0kilmziwf0vpv5ys6rwway"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-unicode-ident" ,rust-unicode-ident-1))))
   (home-page "https://github.com/dtolnay/proc-macro2")
   (synopsis
    "substitute implementation of the compiler's `proc_macro` API to decouple token-based libraries from the procedural macro use case.")
   (description
    "This package provides a substitute implementation of the compiler's `proc_macro`
API to decouple token-based libraries from the procedural macro use case.")
   (license (list license:expat license:asl2.0))))

(define-public rust-zbus-macros-4
  (package
   (name "rust-zbus-macros")
   (version "4.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zbus_macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0glqn6ddgv4ra734p343a41rrxb0phy1v13dljzhpsc1f10bjz96"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-3)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2)
                      ("rust-zvariant-utils" ,rust-zvariant-utils-2))))
   (home-page "https://github.com/dbus2/zbus/")
   (synopsis "proc-macros for zbus")
   (description "This package provides proc-macros for zbus.")
   (license license:expat)))

(define-public rust-xdg-home-1
  (package
   (name "rust-xdg-home")
   (version "1.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "xdg-home" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1f0s44s8l4axp3l90hlg8qahjrwx1g6mi4x2l3rqbc1xz7wdr4fa"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      )))
   (home-page "https://github.com/zeenix/xdg-home")
   (synopsis "The user's home directory as per XDG Specification")
   (description
    "This package provides The user's home directory as per XDG Specification.")
   (license license:expat)))

(define-public rust-vsock-0.5
  (package
   (name "rust-vsock")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "vsock" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0bg3sjz1sazp3p0c2lw8r0w2aqpb41l1p1nd0zb7fn2k9482jbpq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-nix" ,rust-nix-0.28))))
   (home-page "https://github.com/rust-vsock/vsock-rs")
   (synopsis "Virtio socket support for Rust")
   (description "This package provides Virtio socket support for Rust.")
   (license license:asl2.0)))

(define-public rust-tokio-vsock-0.4
  (package
   (name "rust-tokio-vsock")
   (version "0.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio-vsock" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1p88jaypkjicj5rfkj7hmx1jcs2v7cbgyzil084zk4dwn4amr8aj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-futures" ,rust-futures-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tonic" ,rust-tonic-0.8)
                      ("rust-vsock" ,rust-vsock-0.3))))
   (home-page "https://github.com/rust-vsock/tokio-vsock")
   (synopsis "Asynchronous Virtio socket support for Rust")
   (description
    "This package provides Asynchronous Virtio socket support for Rust.")
   (license license:asl2.0)))

(define-public rust-tokio-macros-2
  (package
   (name "rust-tokio-macros")
   (version "2.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio-macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0lnpg14h1v3fh2jvnc8cz7cjf0m7z1xgkwfpcyy632g829imjgb9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://tokio.rs")
   (synopsis "Tokio's proc macros.")
   (description "This package provides Tokio's proc macros.")
   (license license:expat)))

(define-public rust-hermit-abi-0.3
  (package
   (name "rust-hermit-abi")
   (version "0.3.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "hermit-abi" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "092hxjbjnq5fmz66grd9plxd0sh6ssg5fhgwwwqbrzgzkjwdycfj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
   (home-page "https://github.com/hermit-os/hermit-rs")
   (synopsis "Hermit system calls definitions")
   (description "This package provides Hermit system calls definitions.")
   (license (list license:expat license:asl2.0))))

(define-public rust-mio-1
  (package
   (name "rust-mio")
   (version "1.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mio" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1r5g65s5acsx440m0a3pylclbrd0dqz93hg15k9crpllsdbf8sa5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-hermit-abi" ,rust-hermit-abi-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-wasi" ,rust-wasi-0.11)
                      )))
   (home-page "https://github.com/tokio-rs/mio")
   (synopsis "Lightweight non-blocking I/O")
   (description "This package provides Lightweight non-blocking I/O.")
   (license license:expat)))

(define-public rust-tokio-1
  (package
   (name "rust-tokio")
   (version "1.39.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "tokio" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1cb7yhba7nnf00cylcywk7rai5kkdb8b4jzwrc26zgbqqwdzp96s"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-backtrace" ,rust-backtrace-0.3)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-mio" ,rust-mio-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-signal-hook-registry" ,rust-signal-hook-registry-1)
                      ("rust-socket2" ,rust-socket2-0.5)
                      ("rust-tokio-macros" ,rust-tokio-macros-2)
                      ("rust-tracing" ,rust-tracing-0.1)
                      )))
   (home-page "https://tokio.rs")
   (synopsis
    "An event-driven, non-blocking I/O platform for writing asynchronous I/O
backed applications.")
   (description
    "This package provides An event-driven, non-blocking I/O platform for writing asynchronous I/O backed
applications.")
   (license license:expat)))

(define-public rust-serde-repr-0.1
  (package
   (name "rust-serde-repr")
   (version "0.1.19")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_repr" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1sb4cplc33z86pzlx38234xr141wr3cmviqgssiadisgl8dlar3c"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/dtolnay/serde-repr")
   (synopsis
    "Derive Serialize and Deserialize that delegates to the underlying repr of a C-like enum")
   (description
    "This package provides Derive Serialize and Deserialize that delegates to the underlying repr of a
C-like enum.")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
   (name "rust-serde-derive")
   (version "1.0.204")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "08p25262mbmhsr2cg0508d5b1wvljj956rvpg0v3qgg6gc8pxkg0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://serde.rs")
   (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
   (description
    "This package provides Macros 1.1 implementation of #[derive(Serialize, Deserialize)].")
   (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
   (name "rust-serde")
   (version "1.0.204")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "serde" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "04kwpwqz559xlhxkggmm8rjxqgywy5swam3kscwsicnbw1cgaxmw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1)
                      ("rust-serde-derive" ,rust-serde-derive-1))))
   (home-page "https://serde.rs")
   (synopsis "generic serialization/deserialization framework")
   (description
    "This package provides a generic serialization/deserialization framework.")
   (license (list license:expat license:asl2.0))))

(define-public rust-enumflags2-derive-0.7
  (package
   (name "rust-enumflags2-derive")
   (version "0.7.10")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "enumflags2_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1s29iqx3gj5l5s19a22lpn0nljhp5l9smqac99126n2qhfhlh3fy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/meithecatte/enumflags2")
   (synopsis
    "Do not use directly, use the reexport in the `enumflags2` crate. This allows for better compatibility across versions")
   (description
    "This package provides Do not use directly, use the reexport in the `enumflags2` crate.  This allows
for better compatibility across versions.")
   (license (list license:expat license:asl2.0))))

(define-public rust-enumflags2-0.7
  (package
   (name "rust-enumflags2")
   (version "0.7.10")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "enumflags2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0g8kmhaqxq44v76wh971biljrgaqbjc8fbyw2d1z3wsnb5zxncnj"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-enumflags2-derive" ,rust-enumflags2-derive-0.7)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/meithecatte/enumflags2")
   (synopsis "Enum-based bit flags")
   (description "This package provides Enum-based bit flags.")
   (license (list license:expat license:asl2.0))))

(define-public rust-blocking-1
  (package
   (name "rust-blocking")
   (version "1.6.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "blocking" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1si99l8zp7c4zq87y35ayjgc5c9b60jb8h0k14zfcs679z2l2gvh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-channel" ,rust-async-channel-2)
                      ("rust-async-task" ,rust-async-task-4)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-2)
                      ("rust-piper" ,rust-piper-0.2)
                      ("rust-tracing" ,rust-tracing-0.1))))
   (home-page "https://github.com/smol-rs/blocking")
   (synopsis "thread pool for isolating blocking I/O in async programs")
   (description
    "This package provides a thread pool for isolating blocking I/O in async
programs.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-async-trait-0.1
  (package
   (name "rust-async-trait")
   (version "0.1.81")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-trait" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "01w10ad3984czxrmc8ckdrabhmsv80aynfxibjnqwz1dr3f2h33f"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/dtolnay/async-trait")
   (synopsis "Type erasure for async trait methods")
   (description "This package provides Type erasure for async trait methods.")
   (license (list license:expat license:asl2.0))))

(define-public rust-async-recursion-1
  (package
   (name "rust-async-recursion")
   (version "1.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-recursion" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "04ac4zh8qz2xjc79lmfi4jlqj5f92xjvfaqvbzwkizyqd4pl4hrv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/dcchut/async-recursion")
   (synopsis "Recursion for async functions")
   (description "This package provides Recursion for async functions.")
   (license (list license:expat license:asl2.0))))

(define-public rust-async-task-4
  (package
   (name "rust-async-task")
   (version "4.7.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-task" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1pp3avr4ri2nbh7s6y9ws0397nkx1zymmcr14sq761ljarh3axcb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-portable-atomic" ,rust-portable-atomic-1))))
   (home-page "https://github.com/smol-rs/async-task")
   (synopsis "Task abstraction for building executors")
   (description
    "This package provides Task abstraction for building executors.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-async-process-2
  (package
   (name "rust-async-process")
   (version "2.2.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-process" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ajyzx21llsavkslp3z46mqcr3fysycw07cd60mrrql4pndsgvgp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-channel" ,rust-async-channel-2)
                      ("rust-async-io" ,rust-async-io-2)
                      ("rust-async-lock" ,rust-async-lock-3)
                      ("rust-async-signal" ,rust-async-signal-0.2)
                      ("rust-async-task" ,rust-async-task-4)
                      ("rust-blocking" ,rust-blocking-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-event-listener" ,rust-event-listener-5)
                      ("rust-futures-lite" ,rust-futures-lite-2)
                      ("rust-rustix" ,rust-rustix-0.38)
                      ("rust-tracing" ,rust-tracing-0.1)
                      )))
   (home-page "https://github.com/smol-rs/async-process")
   (synopsis "Async interface for working with processes")
   (description
    "This package provides Async interface for working with processes.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-async-io-2
  (package
   (name "rust-async-io")
   (version "2.3.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-io" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0r3rl4dj8sp6c8qqajg5gsn1l9hkbng2ri0vwyh5sybq067slsqd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-lock" ,rust-async-lock-3)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-concurrent-queue" ,rust-concurrent-queue-2)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-2)
                      ("rust-parking" ,rust-parking-2)
                      ("rust-polling" ,rust-polling-3)
                      ("rust-rustix" ,rust-rustix-0.38)
                      ("rust-slab" ,rust-slab-0.4)
                      ("rust-tracing" ,rust-tracing-0.1)
                      )))
   (home-page "https://github.com/smol-rs/async-io")
   (synopsis "Async I/O and timers")
   (description "This package provides Async I/O and timers.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-async-fs-2
  (package
   (name "rust-async-fs")
   (version "2.1.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-fs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0jp0p7lg9zqy2djgdmivbzx0yqmfn9sm2s9dkhaws3zlharhkkgb"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-lock" ,rust-async-lock-3)
                      ("rust-blocking" ,rust-blocking-1)
                      ("rust-futures-lite" ,rust-futures-lite-2))))
   (home-page "https://github.com/smol-rs/async-fs")
   (synopsis "Async filesystem primitives")
   (description "This package provides Async filesystem primitives.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-concurrent-queue-2
  (package
   (name "rust-concurrent-queue")
   (version "2.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "concurrent-queue" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0wrr3mzq2ijdkxwndhf79k952cp4zkz35ray8hvsxl96xrx1k82c"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                      ("rust-loom" ,rust-loom-0.7)
                      ("rust-portable-atomic" ,rust-portable-atomic-1))))
   (home-page "https://github.com/smol-rs/concurrent-queue")
   (synopsis "Concurrent multi-producer multi-consumer queue")
   (description
    "This package provides Concurrent multi-producer multi-consumer queue.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-async-executor-1
  (package
   (name "rust-async-executor")
   (version "1.13.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-executor" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1dyv1cl8j3m04m39kz1mmip4i7rb71ppvykm0dvb3dnsxfidzsyp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-task" ,rust-async-task-4)
                      ("rust-concurrent-queue" ,rust-concurrent-queue-2)
                      ("rust-fastrand" ,rust-fastrand-2)
                      ("rust-futures-lite" ,rust-futures-lite-2)
                      ("rust-slab" ,rust-slab-0.4))))
   (home-page "https://github.com/smol-rs/async-executor")
   (synopsis "Async executor")
   (description "This package provides Async executor.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-event-listener-strategy-0.5
  (package
   (name "rust-event-listener-strategy")
   (version "0.5.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "event-listener-strategy" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18f5ri227khkayhv3ndv7yl4rnasgwksl2jhwgafcxzr7324s88g"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-event-listener" ,rust-event-listener-5)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
   (home-page "https://github.com/smol-rs/event-listener-strategy")
   (synopsis "Block or poll on event_listener easily")
   (description
    "This package provides Block or poll on event_listener easily.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-portable-atomic-util-0.2
  (package
   (name "rust-portable-atomic-util")
   (version "0.2.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "portable-atomic-util" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0kbh4ik8cqr4bdbpyfh8n4xcwip93yciccvv815darif0wh89pgw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-portable-atomic" ,rust-portable-atomic-1))))
   (home-page "https://github.com/taiki-e/portable-atomic")
   (synopsis "Synchronization primitives built with portable-atomic.")
   (description
    "This package provides Synchronization primitives built with portable-atomic.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-event-listener-5
  (package
   (name "rust-event-listener")
   (version "5.3.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "event-listener" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1fkm6q4hjn61wl52xyqyyxai0x9w0ngrzi0wf1qsf8vhsadvwck0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-concurrent-queue" ,rust-concurrent-queue-2)
                      ("rust-loom" ,rust-loom-0.7)
                      ("rust-parking" ,rust-parking-2)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-portable-atomic" ,rust-portable-atomic-1)
                      ("rust-portable-atomic-util" ,rust-portable-atomic-util-0.2))))
   (home-page "https://github.com/smol-rs/event-listener")
   (synopsis "Notify async tasks or threads")
   (description "This package provides Notify async tasks or threads.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-async-broadcast-0.7
  (package
   (name "rust-async-broadcast")
   (version "0.7.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "async-broadcast" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0zia7z1y31awmxma9c89zmvkbj7mdkf7highkmz5z3pa4lp0xk90"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-event-listener" ,rust-event-listener-5)
                      ("rust-event-listener-strategy" ,rust-event-listener-strategy-0.5)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
   (home-page "https://github.com/smol-rs/async-broadcast")
   (synopsis "Async broadcast channels")
   (description "This package provides Async broadcast channels.")
   (license (list license:expat license:asl2.0))))

(define-public rust-zbus-4
  (package
   (name "rust-zbus")
   (version "4.4.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zbus" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "09f7916lp7haxv1y5zgcg99ny15whi6dn3waf1afcafxx8mh35xv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-broadcast" ,rust-async-broadcast-0.7)
                      ("rust-async-executor" ,rust-async-executor-1)
                      ("rust-async-fs" ,rust-async-fs-2)
                      ("rust-async-io" ,rust-async-io-2)
                      ("rust-async-lock" ,rust-async-lock-3)
                      ("rust-async-process" ,rust-async-process-2)
                      ("rust-async-recursion" ,rust-async-recursion-1)
                      ("rust-async-task" ,rust-async-task-4)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-blocking" ,rust-blocking-1)
                      ("rust-enumflags2" ,rust-enumflags2-0.7)
                      ("rust-event-listener" ,rust-event-listener-5)
                      ("rust-futures-core" ,rust-futures-core-0.3)
                      ("rust-futures-sink" ,rust-futures-sink-0.3)
                      ("rust-futures-util" ,rust-futures-util-0.3)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-nix" ,rust-nix-0.29)
                      ("rust-ordered-stream" ,rust-ordered-stream-0.2)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-repr" ,rust-serde-repr-0.1)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-static-assertions" ,rust-static-assertions-1)
                      ("rust-tokio" ,rust-tokio-1)
                      ("rust-tokio-vsock" ,rust-tokio-vsock-0.4)
                      ("rust-tracing" ,rust-tracing-0.1)
                      ("rust-vsock" ,rust-vsock-0.5)
                      ("rust-xdg-home" ,rust-xdg-home-1)
                      ("rust-zbus-macros" ,rust-zbus-macros-4)
                      ("rust-zbus-names" ,rust-zbus-names-3)
                      ("rust-zvariant" ,rust-zvariant-4))))
   (home-page "https://github.com/dbus2/zbus/")
   (synopsis "API for D-Bus communication")
   (description "This package provides API for D-Bus communication.")
   (license license:expat)))

(define-public rust-mac-notification-sys-0.6
  (package
   (name "rust-mac-notification-sys")
   (version "0.6.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "mac-notification-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0r0zla79lgy7mcrwdhk212x2pylk6sy29f81db0smnzr9zbs9z2i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1)
                      ("rust-dirs-next" ,rust-dirs-next-2)
                      ("rust-objc-foundation" ,rust-objc-foundation-0.1)
                      ("rust-objc-id" ,rust-objc-id-0.1)
                      ("rust-time" ,rust-time-0.3))))
   (home-page "https://github.com/h4llow3En/mac-notification-sys")
   (synopsis "Thin wrapper around macOS Notifications")
   (description
    "This package provides Thin wrapper around @code{macOS} Notifications.")
   (license license:expat)))

(define-public rust-zune-jpeg-0.4
  (package
   (name "rust-zune-jpeg")
   (version "0.4.13")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zune-jpeg" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0s07igp839yy66hs5f8g6gzvvanywgv3zxr2hq18yk8bc0c9828n"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-zune-core" ,rust-zune-core-0.4))))
   (home-page
    "https://github.com/etemesi254/zune-image/tree/dev/crates/zune-jpeg")
   (synopsis "fast, correct and safe jpeg decoder")
   (description
    "This package provides a fast, correct and safe jpeg decoder.")
   (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-zune-core-0.4
  (package
   (name "rust-zune-core")
   (version "0.4.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zune-core" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0jj1ra86klzlcj9aha9als9d1dzs7pqv3azs1j3n96822wn3lhiz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-log" ,rust-log-0.4)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/etemesi254/zune-image")
   (synopsis
    "Core utilities for image processing in the zune family of crates")
   (description
    "This package provides Core utilities for image processing in the zune family of crates.")
   (license (list license:expat license:asl2.0 license:zlib))))

(define-public rust-image-webp-0.1
  (package
   (name "rust-image-webp")
   (version "0.1.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "image-webp" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0179iqgvh6ybbq0r5d3ms11kka8jihhpliydkksj1vz2ps6gp6pp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byteorder-lite" ,rust-byteorder-lite-0.1)
                      ("rust-quick-error" ,rust-quick-error-2))))
   (home-page "https://github.com/image-rs/image-webp")
   (synopsis "WebP encoding and decoding in pure Rust")
   (description
    "This package provides @code{WebP} encoding and decoding in pure Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-weezl-0.1
  (package
   (name "rust-weezl")
   (version "0.1.8")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "weezl" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "10lhndjgs6y5djpg3b420xngcr6jkmv70q8rb1qcicbily35pa2k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-futures" ,rust-futures-0.3))))
   (home-page "https://github.com/image-rs/lzw")
   (synopsis "Fast LZW compression and decompression")
   (description
    "This package provides Fast LZW compression and decompression.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gif-0.13
  (package
   (name "rust-gif")
   (version "0.13.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gif" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1whrkvdg26gp1r7f95c6800y6ijqw5y0z8rgj6xihpi136dxdciz"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-color-quant" ,rust-color-quant-1)
                      ("rust-weezl" ,rust-weezl-0.1))))
   (home-page "https://github.com/image-rs/image-gif")
   (synopsis "GIF de- and encoder")
   (description "This package provides GIF de- and encoder.")
   (license (list license:expat license:asl2.0))))

(define-public rust-dcv-color-primitives-0.6
  (package
   (name "rust-dcv-color-primitives")
   (version "0.6.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "dcv-color-primitives" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0k3384cfwhc8z9pxj0gb6dz8sjcwsamnpbrkbc570sfhzvnn5b87"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-paste" ,rust-paste-1)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2))))
   (home-page "https://github.com/aws/dcv-color-primitives")
   (synopsis "a library to perform image color model conversion")
   (description
    "This package provides a library to perform image color model conversion.")
   (license license:expat-0)))

(define-public rust-dav1d-sys-0.8
  (package
   (name "rust-dav1d-sys")
   (version "0.8.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "dav1d-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "158fqp97ny3206sydnimc2jy1c1gcxa4llqvvkp3ii2dixg1rjvf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-system-deps" ,rust-system-deps-6))))
   (home-page "https://github.com/rust-av/dav1d-rs")
   (synopsis "FFI bindings to dav1d")
   (description "This package provides FFI bindings to dav1d.")
   (license license:expat)))

(define-public rust-av-data-0.4
  (package
   (name "rust-av-data")
   (version "0.4.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "av-data" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0lk5pq6jfmfp5ihvnzqdqxympk5rk7648bcsvwhgj02xaairhnyp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byte-slice-cast" ,rust-byte-slice-cast-1)
                      ("rust-bytes" ,rust-bytes-1)
                      ("rust-num-derive" ,rust-num-derive-0.4)
                      ("rust-num-rational" ,rust-num-rational-0.4)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/rust-av/rust-av")
   (synopsis "Multimedia data structures")
   (description "This package provides Multimedia data structures.")
   (license license:expat)))

(define-public rust-dav1d-0.10
  (package
   (name "rust-dav1d")
   (version "0.10.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "dav1d" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1qd13sm1bfbc5chjgrzk4syffkky994lkyzhqrqklqxg1fj58jqd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-av-data" ,rust-av-data-0.4)
                      ("rust-bitflags" ,rust-bitflags-2)
                      ("rust-dav1d-sys" ,rust-dav1d-sys-0.8)
                      ("rust-static-assertions" ,rust-static-assertions-1))))
   (home-page "https://github.com/rust-av/dav1d-rs")
   (synopsis "libdav1d bindings")
   (description "This package provides libdav1d bindings.")
   (license license:expat)))

(define-public rust-byteorder-lite-0.1
  (package
   (name "rust-byteorder-lite")
   (version "0.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "byteorder-lite" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "15alafmz4b9az56z6x7glcbcb6a8bfgyd109qc3bvx07zx4fj7wg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/image-rs/byteorder-lite")
   (synopsis
    "Library for reading/writing numbers in big-endian and little-endian")
   (description
    "This package provides Library for reading/writing numbers in big-endian and little-endian.")
   (license (list license:unlicense license:expat))))

(define-public rust-image-0.25
  (package
   (name "rust-image")
   (version "0.25.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "image" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "041sjvahq6zz5zhjhixmid65x31dafpcs97r26rdvf2j4654qccr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytemuck" ,rust-bytemuck-1)
                      ("rust-byteorder-lite" ,rust-byteorder-lite-0.1)
                      ("rust-color-quant" ,rust-color-quant-1)
                      ("rust-dav1d" ,rust-dav1d-0.10)
                      ("rust-dcv-color-primitives" ,rust-dcv-color-primitives-0.6)
                      ("rust-exr" ,rust-exr-1)
                      ("rust-gif" ,rust-gif-0.13)
                      ("rust-image-webp" ,rust-image-webp-0.1)
                      ("rust-mp4parse" ,rust-mp4parse-0.17)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-png" ,rust-png-0.17)
                      ("rust-qoi" ,rust-qoi-0.4)
                      ("rust-ravif" ,rust-ravif-0.11)
                      ("rust-rayon" ,rust-rayon-1)
                      ("rust-rgb" ,rust-rgb-0.8)
                      ("rust-tiff" ,rust-tiff-0.9)
                      ("rust-zune-core" ,rust-zune-core-0.4)
                      ("rust-zune-jpeg" ,rust-zune-jpeg-0.4))))
   (home-page "https://github.com/image-rs/image")
   (synopsis
    "Imaging library. Provides basic image processing and encoders/decoders for common image formats")
   (description
    "This package provides Imaging library.  Provides basic image processing and encoders/decoders for
common image formats.")
   (license (list license:expat license:asl2.0))))

(define-public rust-notify-rust-4
  (package
   (name "rust-notify-rust")
   (version "4.11.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "notify-rust" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0574ymxrwha13snvqjz6sh69z3dvg40iaq3ckkfyzv05ccxx1896"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-chrono" ,rust-chrono-0.4)
                      ("rust-dbus" ,rust-dbus-0.9)
                      ("rust-env-logger" ,rust-env-logger-0.11)
                      ("rust-image" ,rust-image-0.25)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-mac-notification-sys" ,rust-mac-notification-sys-0.6)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-zbus" ,rust-zbus-4))))
   (home-page "https://github.com/hoodie/notify-rust")
   (synopsis
    "Show desktop notifications (linux, bsd, mac). Pure Rust dbus client and server")
   (description
    "This package provides Show desktop notifications (linux, bsd, mac).  Pure Rust dbus client and server.")
   (license (list license:expat license:asl2.0))))

(define-public rust-libc-0.2
  (package
   (name "rust-libc")
   (version "0.2.155")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libc" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0z44c53z54znna8n322k5iwg80arxxpdzjj5260pxxzc9a58icwp"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
   (home-page "https://github.com/rust-lang/libc")
   (synopsis "Raw FFI bindings to platform libraries like libc.")
   (description
    "This package provides Raw FFI bindings to platform libraries like libc.")
   (license (list license:expat license:asl2.0))))

(define-public rust-cfg-aliases-0.2
  (package
   (name "rust-cfg-aliases")
   (version "0.2.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "cfg_aliases" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "092pxdc1dbgjb6qvh83gk56rkic2n2ybm4yvy76cgynmzi3zwfk1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/katharostech/cfg_aliases")
   (synopsis
    "tiny utility to help save you a lot of effort with long winded `#[cfg()]` checks.")
   (description
    "This package provides a tiny utility to help save you a lot of effort with long
winded `#[cfg()]` checks.")
   (license license:expat)))

(define-public rust-nix-0.29
  (package
   (name "rust-nix")
   (version "0.29.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "nix" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ikvn7s9r2lrfdm3mx1h7nbfjvcc6s9vxdzw7j5xfkd2qdnp9qki"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-cfg-aliases" ,rust-cfg-aliases-0.2)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-memoffset" ,rust-memoffset-0.9)
                      ("rust-pin-utils" ,rust-pin-utils-0.1))))
   (home-page "https://github.com/nix-rust/nix")
   (synopsis "Rust friendly bindings to *nix APIs")
   (description "This package provides Rust friendly bindings to *nix APIs.")
   (license license:expat)))

(define-public rust-log-0.4
  (package
   (name "rust-log")
   (version "0.4.22")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "log" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "093vs0wkm1rgyykk7fjbqp2lwizbixac1w52gv109p5r4jh0p9x7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1)
                      ("rust-sval" ,rust-sval-2)
                      ("rust-sval-ref" ,rust-sval-ref-2)
                      ("rust-value-bag" ,rust-value-bag-1))))
   (home-page "https://github.com/rust-lang/log")
   (synopsis "lightweight logging facade for Rust")
   (description
    "This package provides a lightweight logging facade for Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-indexmap-2
  (package
   (name "rust-indexmap")
   (version "2.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "indexmap" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "182yvyck0zk3swa9bs8l9a8lmis3q7zy338wj6rx2bd81giw4gyy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-borsh" ,rust-borsh-1)
                      ("rust-equivalent" ,rust-equivalent-1)
                      ("rust-hashbrown" ,rust-hashbrown-0.14)
                      ("rust-quickcheck" ,rust-quickcheck-1)
                      ("rust-rayon" ,rust-rayon-1)
                      ("rust-rustc-rayon" ,rust-rustc-rayon-0.5)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/indexmap-rs/indexmap")
   (synopsis "hash table with consistent order and fast iteration.")
   (description
    "This package provides a hash table with consistent order and fast iteration.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-guess-host-triple-0.1
  (package
   (name "rust-guess-host-triple")
   (version "0.1.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "guess_host_triple" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1z2shlrdczwv9wk7r94jqqg3ywz1flpzl4jfv0lhcjf74glqqnmk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-errno" ,rust-errno-0.2)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-log" ,rust-log-0.4)
                      )))
   (home-page "https://gitlab.com/Screwtapello/guess_host_triple/")
   (synopsis
    "Guess which Rust-supported platform is running the current code")
   (description
    "This package provides Guess which Rust-supported platform is running the current code.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-worktree-state-0.11
  (package
   (name "rust-gix-worktree-state")
   (version "0.11.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-worktree-state" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1n2wv2fgdryxn1pa0rg2k43lqc7kpjx4665ihnj6f47mnl2n5v9r"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-filter" ,rust-gix-filter-0.11)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-glob" ,rust-gix-glob-0.16)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-index" ,rust-gix-index-0.33)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                      ("rust-io-close" ,rust-io-close-0.3)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project implementing setting the worktree to a particular state")
   (description
    "This package provides a crate of the gitoxide project implementing setting the
worktree to a particular state.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-submodule-0.12
  (package
   (name "rust-gix-submodule")
   (version "0.12.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-submodule" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zalx2cc2b2sj8kqncbkbpnj1np9lxr09j4yscwmx000m9lhybhg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-config" ,rust-gix-config-0.38)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                      ("rust-gix-refspec" ,rust-gix-refspec-0.23)
                      ("rust-gix-url" ,rust-gix-url-0.27)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing git submodules")
   (description
    "This package provides a crate of the gitoxide project dealing git submodules.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-status-0.11
  (package
   (name "rust-gix-status")
   (version "0.11.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-status" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0dipwd6r0nbyipqc94fdlcn60gd1bispkd3brq3x1hv5rf2b1xw3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-filetime" ,rust-filetime-0.2)
                      ("rust-gix-diff" ,rust-gix-diff-0.44)
                      ("rust-gix-dir" ,rust-gix-dir-0.6)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-filter" ,rust-gix-filter-0.11)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-index" ,rust-gix-index-0.33)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                      ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                      ("rust-portable-atomic" ,rust-portable-atomic-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project dealing with 'git status'-like functionality")
   (description
    "This package provides a crate of the gitoxide project dealing with git
status'-like functionality.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-revision-0.27
  (package
   (name "rust-gix-revision")
   (version "0.27.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-revision" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1kmd96vky58yf46g5nxqny8gl3df4447vb6x6w2lp30iq91kxc81"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project dealing with finding names for revisions and parsing specifications")
   (description
    "This package provides a crate of the gitoxide project dealing with finding names
for revisions and parsing specifications.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-refspec-0.23
  (package
   (name "rust-gix-refspec")
   (version "0.23.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-refspec" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0drzc1p43mc8nprxlqm4s86y9b23rsz89dvqghgmsmb25v6zhs38"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-revision" ,rust-gix-revision-0.27)
                      ("rust-gix-validate" ,rust-gix-validate-0.8)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project for parsing and representing refspecs")
   (description
    "This package provides a crate of the gitoxide project for parsing and
representing refspecs.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-transport-0.42
  (package
   (name "rust-gix-transport")
   (version "0.42.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-transport" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0n60132nd6wwslf6zh09l0ak713z5cdq5rbwqay9bzizfs1jph17"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                      ("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-base64" ,rust-base64-0.22)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-curl" ,rust-curl-0.4)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-2)
                      ("rust-gix-command" ,rust-gix-command-0.3)
                      ("rust-gix-credentials" ,rust-gix-credentials-0.24)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-packetline" ,rust-gix-packetline-0.17)
                      ("rust-gix-quote" ,rust-gix-quote-0.4)
                      ("rust-gix-sec" ,rust-gix-sec-0.10)
                      ("rust-gix-url" ,rust-gix-url-0.27)
                      ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                      ("rust-reqwest" ,rust-reqwest-0.12)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project dedicated to implementing the git transport layer")
   (description
    "This package provides a crate of the gitoxide project dedicated to implementing
the git transport layer.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-protocol-0.45
  (package
   (name "rust-gix-protocol")
   (version "0.45.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-protocol" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "17dav9m6spm0m05m6wxxicqwqgdikccr4w4lfyypfhgji67dmn5s"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-trait" ,rust-async-trait-0.1)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-futures-io" ,rust-futures-io-0.3)
                      ("rust-futures-lite" ,rust-futures-lite-2)
                      ("rust-gix-credentials" ,rust-gix-credentials-0.24)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-transport" ,rust-gix-transport-0.42)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-maybe-async" ,rust-maybe-async-0.2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-winnow" ,rust-winnow-0.6))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project for implementing git protocols")
   (description
    "This package provides a crate of the gitoxide project for implementing git
protocols.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-pack-0.51
  (package
   (name "rust-gix-pack")
   (version "0.51.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-pack" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0aajbwpmfzg7a33yzqfjz2rmczvbask13hd19gwmvrgz3x4r819y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-clru" ,rust-clru-0.6)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-chunk" ,rust-gix-chunk-0.4)
                      ("rust-gix-diff" ,rust-gix-diff-0.44)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                      ("rust-gix-traverse" ,rust-gix-traverse-0.39)
                      ("rust-memmap2" ,rust-memmap2-0.9)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-uluru" ,rust-uluru-3))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Implements git packs and related data structures")
   (description
    "This package implements git packs and related data structures.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-odb-0.61
  (package
   (name "rust-gix-odb")
   (version "0.61.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-odb" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "16xwwfjna9m3rd66hkhcyps6s3bq23r5wpbxpfixi4qxakz89lr0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-pack" ,rust-gix-pack-0.51)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-quote" ,rust-gix-quote-0.4)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-tempfile" ,rust-tempfile-3)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Implements various git object databases")
   (description "This package implements various git object databases.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-negotiate-0.13
  (package
   (name "rust-gix-negotiate")
   (version "0.13.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-negotiate" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0962x6gxhwp55kyr26hzsswv8qbg9h1f16x8kd8n7fq7cgxpkj4y"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project implementing negotiation algorithms")
   (description
    "This package provides a crate of the gitoxide project implementing negotiation
algorithms.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-mailmap-0.23
  (package
   (name "rust-gix-mailmap")
   (version "0.23.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-mailmap" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "024jy339znwi11pz826favmn6in5fn73ygskq33r19dnxnkaqvgg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.31)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project for parsing mailmap files")
   (description
    "This package provides a crate of the gitoxide project for parsing mailmap files.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-macros-0.1
  (package
   (name "rust-gix-macros")
   (version "0.1.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "05ycxnh5sxjsn4lvay309n6knr8ksvkb6zx6f50ik24zc4iyk74r"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Proc-macro utilities for gix")
   (description "This package provides Proc-macro utilities for gix.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-pathspec-0.7
  (package
   (name "rust-gix-pathspec")
   (version "0.7.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-pathspec" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0in0np7i0bx9rcz9lihm1s236814177y035299n3ij2dz2wd21yk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                      ("rust-gix-config-value" ,rust-gix-config-value-0.14)
                      ("rust-gix-glob" ,rust-gix-glob-0.16)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing magical pathspecs")
   (description
    "This package provides a crate of the gitoxide project dealing magical pathspecs.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-discover-0.33
  (package
   (name "rust-gix-discover")
   (version "0.33.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-discover" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "03j52f646q05igg4bln6svjxhxiz944khinj7sx33jy3rqqjfrk7"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ;; ("rust-dunce" ,rust-dunce-1)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-ref" ,rust-gix-ref-0.45)
                      ("rust-gix-sec" ,rust-gix-sec-0.10)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "Discover git repositories and check if a directory is a git repository")
   (description
    "This package provides Discover git repositories and check if a directory is a git repository.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-dir-0.6
  (package
   (name "rust-gix-dir")
   (version "0.6.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-dir" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0r8kif2i622saw068c63jh08q64a5qixnggxgdsjvp80m9wmd5qc"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-discover" ,rust-gix-discover-0.33)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                      ("rust-gix-index" ,rust-gix-index-0.33)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing with directory walks")
   (description
    "This package provides a crate of the gitoxide project dealing with directory
walks.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-index-0.33
  (package
   (name "rust-gix-index")
   (version "0.33.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-index" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0gyply1fzp0wbl8jvckiw4hyv34na7lq0jd4z14bp15xapml96ls"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-filetime" ,rust-filetime-0.2)
                      ("rust-fnv" ,rust-fnv-1)
                      ("rust-gix-bitmap" ,rust-gix-bitmap-0.2)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-lock" ,rust-gix-lock-14)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-traverse" ,rust-gix-traverse-0.39)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-gix-validate" ,rust-gix-validate-0.8)
                      ("rust-hashbrown" ,rust-hashbrown-0.14)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-memmap2" ,rust-memmap2-0.9)
                      ("rust-rustix" ,rust-rustix-0.38)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "work-in-progress crate of the gitoxide project dedicated implementing the git index file")
   (description
    "This package provides a work-in-progress crate of the gitoxide project dedicated
implementing the git index file.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-ignore-0.11
  (package
   (name "rust-gix-ignore")
   (version "0.11.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-ignore" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "09x5vf27pmi7sgnpqw5mfk0n7a5di69l88n8mphx8573k27znsjy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-glob" ,rust-gix-glob-0.16)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-unicode-bom" ,rust-unicode-bom-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing .gitignore files")
   (description
    "This package provides a crate of the gitoxide project dealing .gitignore files.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-worktree-0.34
  (package
   (name "rust-gix-worktree")
   (version "0.34.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-worktree" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "19p7xzrl1i4jw2fhzywqkfd00dn58k9nksll0qi7548bprp35xr6"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-glob" ,rust-gix-glob-0.16)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                      ("rust-gix-index" ,rust-gix-index-0.33)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-validate" ,rust-gix-validate-0.8)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project for shared worktree related types and utilities.")
   (description
    "This package provides a crate of the gitoxide project for shared worktree
related types and utilities.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-diff-0.44
  (package
   (name "rust-gix-diff")
   (version "0.44.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-diff" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "17bci0q2d4bhm6g1gx6ibzbxjj6ykxy6303x8q4rgd85lg4db5hr"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-gix-command" ,rust-gix-command-0.3)
                      ("rust-gix-filter" ,rust-gix-filter-0.11)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                      ("rust-imara-diff" ,rust-imara-diff-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Calculate differences between various git objects")
   (description
    "This package provides Calculate differences between various git objects.")
   (license (list license:expat license:asl2.0))))

(define-public rust-url-2
  (package
   (name "rust-url")
   (version "2.5.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "url" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0v2dx50mx7xzl9454cl5qmpjnhkbahmn59gd3apyipbgyyylsy12"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-form-urlencoded" ,rust-form-urlencoded-1)
                      ("rust-idna" ,rust-idna-0.5)
                      ("rust-percent-encoding" ,rust-percent-encoding-2)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/servo/rust-url")
   (synopsis "URL library for Rust, based on the WHATWG URL Standard")
   (description
    "This package provides URL library for Rust, based on the WHATWG URL Standard.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-url-0.27
  (package
   (name "rust-gix-url")
   (version "0.27.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-url" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0mhicbdcchm01bqpyrxa55wpzf7n7jnnyh5bnpqahbm9pcsrpsz2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-url" ,rust-url-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project implementing parsing and serialization of gix-url")
   (description
    "This package provides a crate of the gitoxide project implementing parsing and
serialization of gix-url.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-prompt-0.8
  (package
   (name "rust-gix-prompt")
   (version "0.8.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-prompt" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0vwkl0dgimli7m8bhpx35n42p20hssyqkscrl1qnlvabpv99a1by"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gix-command" ,rust-gix-command-0.3)
                      ("rust-gix-config-value" ,rust-gix-config-value-0.14)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-rustix" ,rust-rustix-0.38)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project for handling prompts in the terminal")
   (description
    "This package provides a crate of the gitoxide project for handling prompts in
the terminal.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-credentials-0.24
  (package
   (name "rust-gix-credentials")
   (version "0.24.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-credentials" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "17kk6k9g2in27kswc0b8qvzhs1kw9l7gbhz60hp21lg46bsqi18r"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-command" ,rust-gix-command-0.3)
                      ("rust-gix-config-value" ,rust-gix-config-value-0.14)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-prompt" ,rust-gix-prompt-0.8)
                      ("rust-gix-sec" ,rust-gix-sec-0.10)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-gix-url" ,rust-gix-url-0.27)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project to interact with git credentials helpers")
   (description
    "This package provides a crate of the gitoxide project to interact with git
credentials helpers.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-sec-0.10
  (package
   (name "rust-gix-sec")
   (version "0.10.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-sec" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1prnyh4kzawip2y569hp48lrg408m5cknjjvy0s7yfk9lmpx4iqm"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-serde" ,rust-serde-1)
                      )))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project providing a shared trust model")
   (description
    "This package provides a crate of the gitoxide project providing a shared trust
model.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-tempfile-14
  (package
   (name "rust-gix-tempfile")
   (version "14.0.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-tempfile" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0330lm287bxg0p8jsaxaca80v9hjiksb7r6qjpq5q2ryc5dcysh0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-dashmap" ,rust-dashmap-5)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-signal-hook" ,rust-signal-hook-0.3)
                      ("rust-signal-hook-registry" ,rust-signal-hook-registry-1)
                      ("rust-tempfile" ,rust-tempfile-3))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "tempfile implementation with a global registry to assure cleanup")
   (description
    "This package provides a tempfile implementation with a global registry to assure
cleanup.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-lock-14
  (package
   (name "rust-gix-lock")
   (version "14.0.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-lock" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "17g1sknpvjqaq2s29c693mbmkp8sign0174qfi3n3x7ijzi7zg73"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gix-tempfile" ,rust-gix-tempfile-14)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "git-style lock-file implementation")
   (description "This package provides a git-style lock-file implementation.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-ref-0.45
  (package
   (name "rust-gix-ref")
   (version "0.45.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-ref" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1dcv2pgaz6gzhx38zw0qh9pkmhqhf4hqq2gf7waia9snlnh9cvk3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.31)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-lock" ,rust-gix-lock-14)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-gix-validate" ,rust-gix-validate-0.8)
                      ("rust-memmap2" ,rust-memmap2-0.9)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-winnow" ,rust-winnow-0.6))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate to handle git references")
   (description "This package provides a crate to handle git references.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-config-value-0.14
  (package
   (name "rust-gix-config-value")
   (version "0.14.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-config-value" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0giq3js6ls6hwrv4hphh4k22b6mgnhn1cfvpn9qxq5fxfiyrja5k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project providing git-config value parsing")
   (description
    "This package provides a crate of the gitoxide project providing git-config value
parsing.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-config-0.38
  (package
   (name "rust-gix-config")
   (version "0.38.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-config" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0n768fy37w3wy8jsjk34draw8fcljq44yrf8qay9xw0v7p83zx98"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-config-value" ,rust-gix-config-value-0.14)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-glob" ,rust-gix-glob-0.16)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-ref" ,rust-gix-ref-0.45)
                      ("rust-gix-sec" ,rust-gix-sec-0.10)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unicode-bom" ,rust-unicode-bom-2)
                      ("rust-winnow" ,rust-winnow-0.6))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "git-config file parser and editor from the gitoxide project")
   (description
    "This package provides a git-config file parser and editor from the gitoxide
project.")
   (license (list license:expat license:asl2.0))))

(define-public rust-zstd-safe-7
  (package
   (name "rust-zstd-safe")
   (version "7.2.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zstd-safe" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0nch85m5cr493y26yvndm6a8j6sd9mxpr2awrim3dslcnr6sp8sl"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-zstd-sys" ,rust-zstd-sys-2))))
   (home-page "https://github.com/gyscos/zstd-rs")
   (synopsis "Safe low-level bindings for the zstd compression library")
   (description
    "This package provides Safe low-level bindings for the zstd compression library.")
   (license (list license:expat license:asl2.0))))

(define-public rust-zstd-0.13
  (package
   (name "rust-zstd")
   (version "0.13.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zstd" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ygkr6wspm9clbp7ykyl0rv69cfsf9q4lic9wcqiwn34lrwbgwpw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-zstd-safe" ,rust-zstd-safe-7))))
   (home-page "https://github.com/gyscos/zstd-rs")
   (synopsis "Binding for the zstd compression library")
   (description
    "This package provides Binding for the zstd compression library.")
   (license license:expat)))

(define-public rust-lockfree-object-pool-0.1
  (package
   (name "rust-lockfree-object-pool")
   (version "0.1.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "lockfree-object-pool" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0bjm2g1g1avab86r02jb65iyd7hdi35khn1y81z4nba0511fyx4k"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/EVaillant/lockfree-object-pool")
   (synopsis
    "thread-safe object pool collection with automatic return and attach/detach semantics.")
   (description
    "This package provides a thread-safe object pool collection with automatic return
and attach/detach semantics.")
   (license license:boost1.0)))

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
   (synopsis "fast bump allocation arena for Rust.")
   (description
    "This package provides a fast bump allocation arena for Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-zopfli-0.8
  (package
   (name "rust-zopfli")
   (version "0.8.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zopfli" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ip9azz9ldk19m0m1hdppz3n5zcz0cywbg1vx59g4p5c3cwry0g5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bumpalo" ,rust-bumpalo-3)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-lockfree-object-pool" ,rust-lockfree-object-pool-0.1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-simd-adler32" ,rust-simd-adler32-0.3))))
   (home-page "https://github.com/zopfli-rs/zopfli")
   (synopsis "Rust implementation of the Zopfli compression algorithm.")
   (description
    "This package provides a Rust implementation of the Zopfli compression algorithm.")
   (license license:asl2.0)))

(define-public rust-zeroize-1
  (package
   (name "rust-zeroize")
   (version "1.8.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zeroize" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1pjdrmjwmszpxfd7r860jx54cyk94qk59x13sc307cvr5256glyf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-serde" ,rust-serde-1)
                      ("rust-zeroize-derive" ,rust-zeroize-derive-1))))
   (home-page "https://github.com/RustCrypto/utils/tree/master/zeroize")
   (synopsis "Securely clear secrets from memory with a simple trait built on
stable Rust primitives which guarantee memory is zeroed using an
operation will not be 'optimized away' by the compiler.
Uses a portable pure Rust implementation that works everywhere,
even WASM!")
   (description
    "This package provides Securely clear secrets from memory with a simple trait built on stable Rust
primitives which guarantee memory is zeroed using an operation will not be
optimized away by the compiler.  Uses a portable pure Rust implementation that
works everywhere, even WASM!")
   (license (list license:asl2.0 license:expat))))

(define-public rust-time-macros-0.2
  (package
   (name "rust-time-macros")
   (version "0.2.18")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "time-macros" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1kqwxvfh2jkpg38fy673d6danh1bhcmmbsmffww3mphgail2l99z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-num-conv" ,rust-num-conv-0.1)
                      ("rust-time-core" ,rust-time-core-0.1))))
   (home-page "https://github.com/time-rs/time")
   (synopsis
    "Procedural macros for the time crate.
    This crate is an implementation detail and should not be relied upon directly.")
   (description
    "This package provides Procedural macros for the time crate.  This crate is an implementation detail
and should not be relied upon directly.")
   (license (list license:expat license:asl2.0))))

(define-public rust-time-0.3
  (package
   (name "rust-time")
   (version "0.3.36")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "time" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11g8hdpahgrf1wwl2rpsg5nxq3aj7ri6xr672v4qcij6cgjqizax"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-deranged" ,rust-deranged-0.3)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-num-conv" ,rust-num-conv-0.1)
                      ("rust-num-threads" ,rust-num-threads-0.1)
                      ("rust-powerfmt" ,rust-powerfmt-0.2)
                      ("rust-quickcheck" ,rust-quickcheck-1)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-time-core" ,rust-time-core-0.1)
                      ("rust-time-macros" ,rust-time-macros-0.2))))
   (home-page "https://time-rs.github.io")
   (synopsis
    "Date and time library. Fully interoperable with the standard library. Mostly compatible with #![no_std]")
   (description
    "This package provides Date and time library.  Fully interoperable with the standard library.  Mostly
compatible with #![no_std].")
   (license (list license:expat license:asl2.0))))

(define-public rust-thiserror-impl-1
  (package
   (name "rust-thiserror-impl")
   (version "1.0.63")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "thiserror-impl" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0qd21l2jjrkvnpr5da3l3b58v4wmrkn6aa0h1z5dg6kb8rc8nmd4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/dtolnay/thiserror")
   (synopsis "Implementation detail of the `thiserror` crate")
   (description
    "This package provides Implementation detail of the `thiserror` crate.")
   (license (list license:expat license:asl2.0))))

(define-public rust-thiserror-1
  (package
   (name "rust-thiserror")
   (version "1.0.63")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "thiserror" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "092p83mf4p1vkjb2j6h6z96dan4raq2simhirjv12slbndq26d60"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-thiserror-impl" ,rust-thiserror-impl-1))))
   (home-page "https://github.com/dtolnay/thiserror")
   (synopsis "derive(Error)")
   (description "This package provides derive(Error).")
   (license (list license:expat license:asl2.0))))

(define-public rust-memchr-2
  (package
   (name "rust-memchr")
   (version "2.7.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "memchr" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18z32bhxrax0fnjikv475z7ii718hq457qwmaryixfxsl2qrmjkq"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
   (home-page "https://github.com/BurntSushi/memchr")
   (synopsis
    "Provides extremely fast (uses SIMD on x86_64, aarch64 and wasm32) routines for
1, 2 or 3 byte search and single substring search.")
   (description
    "This package provides extremely fast (uses SIMD on x86_64, aarch64 and wasm32)
routines for 1, 2 or 3 byte search and single substring search.")
   (license (list license:unlicense license:expat))))

(define-public rust-lzma-rs-0.3
  (package
   (name "rust-lzma-rs")
   (version "0.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "lzma-rs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0phif4pnjrn28zcxgz3a7z86hhx5gdajmkrndfw4vrkahd682zi9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                      ("rust-crc" ,rust-crc-3)
                      ("rust-env-logger" ,rust-env-logger-0.9)
                      ("rust-log" ,rust-log-0.4))))
   (home-page "https://github.com/gendx/lzma-rs")
   (synopsis "codec for LZMA, LZMA2 and XZ written in pure Rust")
   (description
    "This package provides a codec for LZMA, LZMA2 and XZ written in pure Rust.")
   (license license:expat)))

(define-public rust-libz-sys-1
  (package
   (name "rust-libz-sys")
   (version "1.1.18")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libz-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0bpqmfzvijbrqs29vphnafjz834lpz6pabbsnf85rqppb9pa4pf1"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cc" ,rust-cc-1)
                      ("rust-cmake" ,rust-cmake-0.1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-pkg-config" ,rust-pkg-config-0.3)
                      ("rust-vcpkg" ,rust-vcpkg-0.2))))
   (home-page "https://github.com/rust-lang/libz-sys")
   (synopsis
    "Low-level bindings to the system libz library (also known as zlib)")
   (description
    "This package provides Low-level bindings to the system libz library (also known as zlib).")
   (license (list license:expat license:asl2.0))))

(define-public rust-zlib-rs-0.1
  (package
   (name "rust-zlib-rs")
   (version "0.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zlib-rs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "18a49npwcrpbvsxs3dzk51kizd81qffnaxjqfn4fqq37vki0a8f5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-libz-sys" ,rust-libz-sys-1)
                      ("rust-quickcheck" ,rust-quickcheck-1))))
   (home-page "https://github.com/memorysafety/zlib-rs")
   (synopsis "memory-safe zlib implementation written in rust")
   (description
    "This package provides a memory-safe zlib implementation written in rust.")
   (license license:zlib)))

(define-public rust-libz-rs-sys-0.1
  (package
   (name "rust-libz-rs-sys")
   (version "0.1.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "libz-rs-sys" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0a1vx9gpyc6aizq7d1v76lribxchqkfxc3295a4z7q0b4lil8g6d"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                      ("rust-zlib-rs" ,rust-zlib-rs-0.1))))
   (home-page "https://github.com/memorysafety/zlib-rs")
   (synopsis "memory-safe zlib implementation written in rust")
   (description
    "This package provides a memory-safe zlib implementation written in rust.")
   (license license:zlib)))

(define-public rust-flate2-1
  (package
   (name "rust-flate2")
   (version "1.0.30")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "flate2" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1bjx56n0wq5w7vsjn7b5rbmqiw0vc3mfzz1rl7i2jy0wzmy44m2z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cloudflare-zlib-sys" ,rust-cloudflare-zlib-sys-0.3)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-libz-ng-sys" ,rust-libz-ng-sys-1)
                      ("rust-libz-rs-sys" ,rust-libz-rs-sys-0.1)
                      ("rust-libz-sys" ,rust-libz-sys-1)
                      ("rust-miniz-oxide" ,rust-miniz-oxide-0.7))))
   (home-page "https://github.com/rust-lang/flate2-rs")
   (synopsis
    "DEFLATE compression and decompression exposed as Read/BufRead/Write streams.
Supports miniz_oxide and multiple zlib implementations. Supports zlib, gzip,
and raw deflate streams.")
   (description
    "This package provides DEFLATE compression and decompression exposed as Read/@code{BufRead/Write}
streams.  Supports miniz_oxide and multiple zlib implementations.  Supports
zlib, gzip, and raw deflate streams.")
   (license (list license:expat license:asl2.0))))

(define-public rust-deflate64-0.1
  (package
   (name "rust-deflate64")
   (version "0.1.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "deflate64" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "06scix17pa7wzzfsnhkycpcc6s04shs49cdaxx2k1sl0226jnsfs"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t))
   (home-page "https://github.com/anatawa12/deflate64-rs#readme")
   (synopsis "Deflate64 implementation based on .NET's implementation")
   (description
    "This package provides Deflate64 implementation based on .NET's implementation.")
   (license license:expat)))

(define-public rust-crossbeam-utils-0.8
  (package
   (name "rust-crossbeam-utils")
   (version "0.8.20")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "crossbeam-utils" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "100fksq5mm1n7zj242cclkw6yf7a4a8ix3lvpfkhxvdhbda9kv12"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-loom" ,rust-loom-0.7))))
   (home-page
    "https://github.com/crossbeam-rs/crossbeam/tree/master/crossbeam-utils")
   (synopsis "Utilities for concurrent programming")
   (description "This package provides Utilities for concurrent programming.")
   (license (list license:expat license:asl2.0))))

(define-public rust-crc32fast-1
  (package
   (name "rust-crc32fast")
   (version "1.4.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "crc32fast" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1czp7vif73b8xslr3c9yxysmh9ws2r8824qda7j47ffs9pcnjxx9"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1))))
   (home-page "https://github.com/srijs/rust-crc32fast")
   (synopsis "Fast, SIMD-accelerated CRC32 (IEEE) checksum computation")
   (description
    "This package provides Fast, SIMD-accelerated CRC32 (IEEE) checksum computation.")
   (license (list license:expat license:asl2.0))))

(define-public rust-zip-2
  (package
   (name "rust-zip")
   (version "2.1.6")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "zip" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0biy7mxqnzaibz603jmly52gzvyvqmbndlgvw5n2i5n2xy98rpa0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-aes" ,rust-aes-0.8)
                      ("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-bzip2" ,rust-bzip2-0.4)
                      ("rust-chrono" ,rust-chrono-0.4)
                      ("rust-constant-time-eq" ,rust-constant-time-eq-0.3)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                      ("rust-deflate64" ,rust-deflate64-0.1)
                      ("rust-displaydoc" ,rust-displaydoc-0.2)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-hmac" ,rust-hmac-0.12)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-lzma-rs" ,rust-lzma-rs-0.3)
                      ("rust-memchr" ,rust-memchr-2)
                      ("rust-pbkdf2" ,rust-pbkdf2-0.12)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-zeroize" ,rust-zeroize-1)
                      ("rust-zopfli" ,rust-zopfli-0.8)
                      ("rust-zstd" ,rust-zstd-0.13))))
   (home-page "https://github.com/zip-rs/zip2.git")
   (synopsis "Library to support the reading and writing of zip files.")
   (description
    "This package provides Library to support the reading and writing of zip files.")
   (license license:expat)))

(define-public rust-gix-revwalk-0.13
  (package
   (name "rust-gix-revwalk")
   (version "0.13.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-revwalk" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1q23mcf4ji5q8qi3g86vxxgz4x4ykgqja0kyacgi9bvimg50q0qv"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate providing utilities for walking the revision graph")
   (description
    "This package provides a crate providing utilities for walking the revision
graph.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-commitgraph-0.24
  (package
   (name "rust-gix-commitgraph")
   (version "0.24.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-commitgraph" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0y7wc0y0xb0kh3c22pj3ns04zdqglqb22gj71kn3cn2ngzv0cfqk"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-chunk" ,rust-gix-chunk-0.4)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-memmap2" ,rust-memmap2-0.9)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Read-only access to the git commitgraph file format")
   (description
    "This package provides Read-only access to the git commitgraph file format.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-traverse-0.39
  (package
   (name "rust-gix-traverse")
   (version "0.39.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-traverse" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0h48bbjym6fkdhy9q7p8v6rn9ksvkwxp8fs1415cyw8ya66a36g4"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project")
   (description "This package provides a crate of the gitoxide project.")
   (license (list license:expat license:asl2.0))))

(define-public rust-fastrand-2
  (package
   (name "rust-fastrand")
   (version "2.1.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "fastrand" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "06p5d0rxq7by260m4ym9ial0bwgi0v42lrvhl6nm2g7h0h2m3h4z"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-getrandom" ,rust-getrandom-0.2))))
   (home-page "https://github.com/smol-rs/fastrand")
   (synopsis "simple and fast random number generator")
   (description
    "This package provides a simple and fast random number generator.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-gix-fs-0.11
  (package
   (name "rust-gix-fs")
   (version "0.11.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-fs" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0yix2q3k3mniw0xkviz1sj1qfkfrw0bwk03nsz2b25yzgk19kpva"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-fastrand" ,rust-fastrand-2)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate providing file system specific utilities to `gitoxide`")
   (description
    "This package provides a crate providing file system specific utilities to
`gitoxide`.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-utils-0.1
  (package
   (name "rust-gix-utils")
   (version "0.1.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-utils" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1p6lschmdrg1j9cd3rm6q96dyrvivzi2305d7ck1588gzpvjs69m"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-fastrand" ,rust-fastrand-2)
                      ("rust-unicode-normalization" ,rust-unicode-normalization-0.1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate with `gitoxide` utilities that don't need feature toggles")
   (description
    "This package provides a crate with `gitoxide` utilities that don't need feature
toggles.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-trace-0.1
  (package
   (name "rust-gix-trace")
   (version "0.1.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-trace" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0zhm2lwqr070rq3bdn4b1zjs7mn7bhlkfgwfap6xspwi11s2c97r"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-document-features" ,rust-document-features-0.2)
                      ("rust-tracing-core" ,rust-tracing-core-0.1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate to provide minimal `tracing` support that can be turned off to zero cost")
   (description
    "This package provides a crate to provide minimal `tracing` support that can be
turned off to zero cost.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-packetline-blocking-0.17
  (package
   (name "rust-gix-packetline-blocking")
   (version "0.17.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-packetline-blocking" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0jp1fz5mqbikh1xfrxyc1qv57lnh62crg2fmwhr4fa1xi8vl47f3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-faster-hex" ,rust-faster-hex-0.9)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "duplicate of `gix-packetline` with the `blocking-io` feature pre-selected")
   (description
    "This package provides a duplicate of `gix-packetline` with the `blocking-io`
feature pre-selected.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-command-0.3
  (package
   (name "rust-gix-command")
   (version "0.3.8")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-command" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0yqxzmx3a3fxwii6gc5gyr105sfax1ad86h26az1r2fscxw8cxhd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-shell-words" ,rust-shell-words-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project handling internal git command execution")
   (description
    "This package provides a crate of the gitoxide project handling internal git
command execution.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-filter-0.11
  (package
   (name "rust-gix-filter")
   (version "0.11.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-filter" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "06m6ph3b67696ckq5gfn9pwm77sh507km7sfzx6my9r8v8w7fm76"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                      ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                      ("rust-gix-command" ,rust-gix-command-0.3)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-packetline-blocking" ,rust-gix-packetline-blocking-0.17)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-quote" ,rust-gix-quote-0.4)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project implementing git filters")
   (description
    "This package provides a crate of the gitoxide project implementing git filters.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-glob-0.16
  (package
   (name "rust-gix-glob")
   (version "0.16.4")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-glob" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0ixlbibj1lrs2vx6vv19dg01lbsj9lsws4r8x6mwhp16z9dg2zgs"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-serde" ,rust-serde-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing with pattern matching")
   (description
    "This package provides a crate of the gitoxide project dealing with pattern
matching.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-attributes-0.22
  (package
   (name "rust-gix-attributes")
   (version "0.22.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-attributes" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0mv293x9l976arqj8sqsbk2ar6hibmninr03nwl8qa41gsffjz73"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-glob" ,rust-gix-glob-0.16)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-quote" ,rust-gix-quote-0.4)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-kstring" ,rust-kstring-2)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-unicode-bom" ,rust-unicode-bom-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project dealing .gitattributes files")
   (description
    "This package provides a crate of the gitoxide project dealing .gitattributes
files.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-worktree-stream-0.13
  (package
   (name "rust-gix-worktree-stream")
   (version "0.13.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-worktree-stream" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "08gd3fca4jjaygsawpm7s6f3p7rvb3br87ap8ipqahcs4jb4hpg3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-gix-attributes" ,rust-gix-attributes-0.22)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-filter" ,rust-gix-filter-0.11)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-traverse" ,rust-gix-traverse-0.39)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "generate a byte-stream from a git-tree")
   (description
    "This package provides generate a byte-stream from a git-tree.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-path-0.10
  (package
   (name "rust-gix-path")
   (version "0.10.9")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-path" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1n9b71kwwswibnhw99zb7y3ya9ngndsw1rwdpj54sd1ivaxxa8wd"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate of the gitoxide project dealing paths and their conversions")
   (description
    "This package provides a crate of the gitoxide project dealing paths and their
conversions.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-validate-0.8
  (package
   (name "rust-gix-validate")
   (version "0.8.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-validate" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1kqad8a2wdz69ma7hspi21pazgpkrc5hg4iw37gsvca99b9pvhl2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Validation functions for various kinds of names in git")
   (description
    "This package provides Validation functions for various kinds of names in git.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-features-0.38
  (package
   (name "rust-gix-features")
   (version "0.38.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-features" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0sfw6zs3qgmlqjkj4cvyfz6q6dgdlw1d16c7yckwgyg5kyn4aw5c"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bytes" ,rust-bytes-1)
                      ("rust-bytesize" ,rust-bytesize-1)
                      ("rust-crc32fast" ,rust-crc32fast-1)
                      ("rust-crossbeam-channel" ,rust-crossbeam-channel-0.5)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-jwalk" ,rust-jwalk-0.8)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-prodash" ,rust-prodash-28)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-sha1-smol" ,rust-sha1-smol-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-walkdir" ,rust-walkdir-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "crate to integrate various capabilities using compile-time feature flags")
   (description
    "This package provides a crate to integrate various capabilities using
compile-time feature flags.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-object-0.42
  (package
   (name "rust-gix-object")
   (version "0.42.3")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-object" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "11p3pynmriglj5j3hzh5qa4sz7pnhzxxzr1w85xzmhp7ni32zni5"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.31)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-gix-validate" ,rust-gix-validate-0.8)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-winnow" ,rust-winnow-0.6))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis
    "Immutable and mutable git objects with decoding and encoding support")
   (description
    "This package provides Immutable and mutable git objects with decoding and encoding support.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-archive-0.13
  (package
   (name "rust-gix-archive")
   (version "0.13.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-archive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1m4nwxcfrivnf74kx38sxgcalba8nbl2fq4xlvad28q2vzmvpdk3"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-flate2" ,rust-flate2-1)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-worktree-stream" ,rust-gix-worktree-stream-0.13)
                      ("rust-tar" ,rust-tar-0.4)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-time" ,rust-time-0.3)
                      ("rust-zip" ,rust-zip-2))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "archive generation from of a worktree stream")
   (description
    "This package provides archive generation from of a worktree stream.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-date-0.8
  (package
   (name "rust-gix-date")
   (version "0.8.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-date" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1h5qygjxr8p2g2vdrzpvx0plnyy9gsym29wjxc5fx48ly8qnkvcy"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-time" ,rust-time-0.3))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "crate of the gitoxide project parsing dates the way git does")
   (description
    "This package provides a crate of the gitoxide project parsing dates the way git
does.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-actor-0.31
  (package
   (name "rust-gix-actor")
   (version "0.31.5")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix-actor" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1wm3i9g69hkfhwiw1c4z9fr1hkfxsfxyzdh07b637f1lgqsm9r50"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-itoa" ,rust-itoa-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-winnow" ,rust-winnow-0.6))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "way to identify git actors")
   (description "This package provides a way to identify git actors.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gix-0.64
  (package
   (name "rust-gix")
   (version "0.64.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gix" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0kv3w87h8gbwg16k7nqzalb417v8yzh7fq0nh28350nckz91916p"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                      ("rust-document-features" ,rust-document-features-0.2)
                      ("rust-gix-actor" ,rust-gix-actor-0.31)
                      ("rust-gix-archive" ,rust-gix-archive-0.13)
                      ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                      ("rust-gix-command" ,rust-gix-command-0.3)
                      ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                      ("rust-gix-config" ,rust-gix-config-0.38)
                      ("rust-gix-credentials" ,rust-gix-credentials-0.24)
                      ("rust-gix-date" ,rust-gix-date-0.8)
                      ("rust-gix-diff" ,rust-gix-diff-0.44)
                      ("rust-gix-dir" ,rust-gix-dir-0.6)
                      ("rust-gix-discover" ,rust-gix-discover-0.33)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-gix-filter" ,rust-gix-filter-0.11)
                      ("rust-gix-fs" ,rust-gix-fs-0.11)
                      ("rust-gix-glob" ,rust-gix-glob-0.16)
                      ("rust-gix-hash" ,rust-gix-hash-0.14)
                      ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                      ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                      ("rust-gix-index" ,rust-gix-index-0.33)
                      ("rust-gix-lock" ,rust-gix-lock-14)
                      ("rust-gix-macros" ,rust-gix-macros-0.1)
                      ("rust-gix-mailmap" ,rust-gix-mailmap-0.23)
                      ("rust-gix-negotiate" ,rust-gix-negotiate-0.13)
                      ("rust-gix-object" ,rust-gix-object-0.42)
                      ("rust-gix-odb" ,rust-gix-odb-0.61)
                      ("rust-gix-pack" ,rust-gix-pack-0.51)
                      ("rust-gix-path" ,rust-gix-path-0.10)
                      ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                      ("rust-gix-prompt" ,rust-gix-prompt-0.8)
                      ("rust-gix-protocol" ,rust-gix-protocol-0.45)
                      ("rust-gix-ref" ,rust-gix-ref-0.45)
                      ("rust-gix-refspec" ,rust-gix-refspec-0.23)
                      ("rust-gix-revision" ,rust-gix-revision-0.27)
                      ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                      ("rust-gix-sec" ,rust-gix-sec-0.10)
                      ("rust-gix-status" ,rust-gix-status-0.11)
                      ("rust-gix-submodule" ,rust-gix-submodule-0.12)
                      ("rust-gix-tempfile" ,rust-gix-tempfile-14)
                      ("rust-gix-trace" ,rust-gix-trace-0.1)
                      ("rust-gix-transport" ,rust-gix-transport-0.42)
                      ("rust-gix-traverse" ,rust-gix-traverse-0.39)
                      ("rust-gix-url" ,rust-gix-url-0.27)
                      ("rust-gix-utils" ,rust-gix-utils-0.1)
                      ("rust-gix-validate" ,rust-gix-validate-0.8)
                      ("rust-gix-worktree" ,rust-gix-worktree-0.34)
                      ("rust-gix-worktree-state" ,rust-gix-worktree-state-0.11)
                      ("rust-gix-worktree-stream" ,rust-gix-worktree-stream-0.13)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-parking-lot" ,rust-parking-lot-0.12)
                      ("rust-prodash" ,rust-prodash-28)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-signal-hook" ,rust-signal-hook-0.3)
                      ("rust-smallvec" ,rust-smallvec-1)
                      ("rust-thiserror" ,rust-thiserror-1))))
   (home-page "https://github.com/Byron/gitoxide")
   (synopsis "Interact with git repositories just like git would")
   (description
    "This package provides Interact with git repositories just like git would.")
   (license (list license:expat license:asl2.0))))

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
                      )))
   (home-page "https://github.com/bytecodealliance/rustix")
   (synopsis "Safe Rust bindings to POSIX/Unix/Linux/Winsock-like syscalls")
   (description
    "This package provides Safe Rust bindings to POSIX/Unix/Linux/Winsock-like syscalls.")
   (license (list license:asl2.0 license:expat
		  (license:fsdg-compatible
		   "Apache-2.0_WITH_LLVM-exception"
		   "https://docs.rs/crate/rustix/0.38.34/source/LICENSE-Apache-2.0_WITH_LLVM-exception")))))

(define-public rust-gethostname-0.5
  (package
   (name "rust-gethostname")
   (version "0.5.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gethostname" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0c0y7mc8bpsjkvvykqcic9cynskvm82iz4fn4335pmhqd2m5adnw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-rustix" ,rust-rustix-0.38))))
   (home-page "https://github.com/swsnr/gethostname.rs")
   (synopsis "gethostname for all platforms")
   (description "This package provides gethostname for all platforms.")
   (license license:asl2.0)))

(define-public rust-termwiz-0.15
  (package
   (name "rust-termwiz")
   (version "0.15.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "termwiz" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1ig83sldqnbmy95kb4ixhrjn63qym7dssxy3p2rsjj03rj96ivri"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-base64" ,rust-base64-0.13)
                      ("rust-bitflags" ,rust-bitflags-1)
                      ("rust-cassowary" ,rust-cassowary-0.3)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-filedescriptor" ,rust-filedescriptor-0.8)
                      ("rust-fnv" ,rust-fnv-1)
                      ("rust-hex" ,rust-hex-0.4)
                      ("rust-image" ,rust-image-0.23)
                      ("rust-lazy-static" ,rust-lazy-static-1)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-memmem" ,rust-memmem-0.1)
                      ("rust-num-derive" ,rust-num-derive-0.3)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-ordered-float" ,rust-ordered-float-2)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-semver" ,rust-semver-0.11)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-sha2" ,rust-sha2-0.9)
                      ("rust-signal-hook" ,rust-signal-hook-0.1)
                      ("rust-terminfo" ,rust-terminfo-0.7)
                      ("rust-termios" ,rust-termios-0.3)
                      ("rust-thiserror" ,rust-thiserror-1)
                      ("rust-ucd-trie" ,rust-ucd-trie-0.1)
                      ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                      ("rust-vtparse" ,rust-vtparse-0.6)
                      )))
   (home-page "https://github.com/wez/wezterm")
   (synopsis "Terminal Wizardry for Unix and Windows")
   (description
    "This package provides Terminal Wizardry for Unix and Windows.")
   (license license:expat)))

(define-public rust-pathsearch-0.2
  (package
   (name "rust-pathsearch")
   (version "0.2.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "pathsearch" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "01bvjyighsrb5bgk8vcwlr1mjv6pqxk4n2qrkhbigaw2wp2kp66s"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                      ("rust-libc" ,rust-libc-0.2))))
   (home-page "https://github.com/wez/wzsh")
   (synopsis "Search for files in PATH")
   (description "This package provides Search for files in PATH.")
   (license license:expat)))

(define-public rust-clap-complete-4
  (package
   (name "rust-clap-complete")
   (version "4.5.12")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap_complete" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0d6zwc4y216i808qm2zdamizq1ihp8z1zjl4wd2n6cbwx19h0rx8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-clap" ,rust-clap-4)
                      ("rust-clap-lex" ,rust-clap-lex-0.7)
                      ("rust-is-executable" ,rust-is-executable-1)
                      ("rust-pathdiff" ,rust-pathdiff-0.2)
                      ("rust-shlex" ,rust-shlex-1)
                      ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
   (home-page "https://github.com/clap-rs/clap")
   (synopsis "Generate shell completion scripts for your clap::Command")
   (description
    "This package provides Generate shell completion scripts for your clap::Command.")
   (license (list license:expat license:asl2.0))))

(define-public rust-clap-derive-4
  (package
   (name "rust-clap-derive")
   (version "4.5.13")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap_derive" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1860xq3rbgwsqwcj9rd14cky9iiywwx86j7fvvngdjixbyfka7ah"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-heck" ,rust-heck-0.5)
                      ("rust-proc-macro2" ,rust-proc-macro2-1)
                      ("rust-quote" ,rust-quote-1)
                      ("rust-syn" ,rust-syn-2))))
   (home-page "https://github.com/clap-rs/clap")
   (synopsis "Parse command line argument by defining a struct, derive crate")
   (description
    "This package provides Parse command line argument by defining a struct, derive crate.")
   (license (list license:expat license:asl2.0))))

(define-public rust-rustc-demangle-0.1
  (package
   (name "rust-rustc-demangle")
   (version "0.1.24")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "rustc-demangle" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "07zysaafgrkzy2rjgwqdj2a8qdpsm6zv6f5pgpk9x0lm40z9b6vi"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1))))
   (home-page "https://github.com/rust-lang/rustc-demangle")
   (synopsis "Rust compiler symbol demangling.")
   (description "This package provides Rust compiler symbol demangling.")
   (license (list license:expat license:asl2.0))))

(define-public rust-ahash-0.8
  (package
   (name "rust-ahash")
   (version "0.8.11")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ahash" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "04chdfkls5xmhp1d48gnjsmglbqibizs3bpbj6rsj604m10si7g8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-atomic-polyfill" ,rust-atomic-polyfill-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-const-random" ,rust-const-random-0.1)
                      ("rust-getrandom" ,rust-getrandom-0.2)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-version-check" ,rust-version-check-0.9)
                      ("rust-zerocopy" ,rust-zerocopy-0.7))))
   (home-page "https://github.com/tkaitchuck/ahash")
   (synopsis
    "non-cryptographic hash function using AES-NI for high performance")
   (description
    "This package provides a non-cryptographic hash function using AES-NI for high
performance.")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasmparser-0.214
  (package
   (name "rust-wasmparser")
   (version "0.214.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasmparser" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1dnw7nkvxsph7718qikyp3nxlgwkx5j21x42sg8dm11y1q4w22ak"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-ahash" ,rust-ahash-0.8)
                      ("rust-bitflags" ,rust-bitflags-2)
                      ("rust-hashbrown" ,rust-hashbrown-0.14)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-semver" ,rust-semver-1)
                      ("rust-serde" ,rust-serde-1))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
   (synopsis
    "simple event-driven library for parsing WebAssembly binary files.")
   (description
    "This package provides a simple event-driven library for parsing
@code{WebAssembly} binary files.")
   (license (list license:asl2.0
		  (license:fsdg-compatible
		   "Apache-2.0_WITH_LLVM-exception"
		   "https://docs.rs/crate/rustix/0.38.34/source/LICENSE-Apache-2.0_WITH_LLVM-exception")))))

(define-public rust-ruzstd-0.7
  (package
   (name "rust-ruzstd")
   (version "0.7.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ruzstd" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "13xz8iv0c96m4mrcx9zmn1rimvfqprv641a3yabsf6wvc59v48jh"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                      ("rust-twox-hash" ,rust-twox-hash-1))))
   (home-page "https://github.com/KillingSpark/zstd-rs")
   (synopsis "decoder for the zstd compression format")
   (description
    "This package provides a decoder for the zstd compression format.")
   (license license:expat)))

(define-public rust-object-0.36
  (package
   (name "rust-object")
   (version "0.36.2")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "object" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "03hpcgwcsm5cfpvcmk8x0hbkvxlpw3c2pq8afrgiifx7val3y81z"))))
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
                      ("rust-ruzstd" ,rust-ruzstd-0.7)
                      ("rust-wasmparser" ,rust-wasmparser-0.214))))
   (home-page "https://github.com/gimli-rs/object")
   (synopsis "unified interface for reading and writing object file formats.")
   (description
    "This package provides a unified interface for reading and writing object file
formats.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-jobserver-0.1
  (package
   (name "rust-jobserver")
   (version "0.1.32")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "jobserver" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1l2k50qmj84x9mn39ivjz76alqmx72jhm12rw33zx9xnpv5xpla8"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-libc" ,rust-libc-0.2))))
   (home-page "https://github.com/rust-lang/jobserver-rs")
   (synopsis "An implementation of the GNU Make jobserver for Rust.")
   (description
    "This package provides An implementation of the GNU Make jobserver for Rust.")
   (license (list license:expat license:asl2.0))))

(define-public rust-cc-1
  (package
   (name "rust-cc")
   (version "1.1.7")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "cc" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1g2w088mkhlyji5cpsw34mzppn5jcb9h2d9sga4y677sggyw7996"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-jobserver" ,rust-jobserver-0.1)
                      ("rust-libc" ,rust-libc-0.2))))
   (home-page "https://github.com/rust-lang/cc-rs")
   (synopsis
    "build-time dependency for Cargo build scripts to assist in invoking the native
C compiler to compile native C code into a static archive to be linked into Rust
code.")
   (description
    "This package provides a build-time dependency for Cargo build scripts to assist
in invoking the native C compiler to compile native C code into a static archive
to be linked into Rust code.")
   (license (list license:expat license:asl2.0))))

(define-public rust-wasmparser-0.202
  (package
   (name "rust-wasmparser")
   (version "0.202.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "wasmparser" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "04qljgwjv6a6nn9sx6bbz167s0dim4liphgp1sc8ngygscaqb6fn"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-semver" ,rust-semver-1))))
   (home-page
    "https://github.com/bytecodealliance/wasm-tools/tree/main/crates/wasmparser")
   (synopsis
    "simple event-driven library for parsing WebAssembly binary files.")
   (description
    "This package provides a simple event-driven library for parsing
@code{WebAssembly} binary files.")
   (license (list license:asl2.0
		  (license:fsdg-compatible
		   "Apache-2.0_WITH_LLVM-exception"
		   "https://docs.rs/crate/rustix/0.38.34/source/LICENSE-Apache-2.0_WITH_LLVM-exception")))))

(define-public rust-ruzstd-0.6
  (package
   (name "rust-ruzstd")
   (version "0.6.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "ruzstd" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0yygqpar2x910lnii4k5p43aj4943hlnxpczmqhsfddmxrqa8x2i"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-byteorder" ,rust-byteorder-1)
                      ("rust-derive-more" ,rust-derive-more-0.99)
                      ("rust-twox-hash" ,rust-twox-hash-1))))
   (home-page "https://github.com/KillingSpark/zstd-rs")
   (synopsis "decoder for the zstd compression format")
   (description
    "This package provides a decoder for the zstd compression format.")
   (license license:expat)))

(define-public rust-object-0.35
  (package
   (name "rust-object")
   (version "0.35.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "object" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0pnv84mx3f3p847hfnsp4znivnwkc1x53maq459a92w42fw7mv5q"))))
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
                      ("rust-ruzstd" ,rust-ruzstd-0.6)
                      ("rust-wasmparser" ,rust-wasmparser-0.202))))
   (home-page "https://github.com/gimli-rs/object")
   (synopsis "unified interface for reading and writing object file formats.")
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
   (description
    "This package provides Cross-platform Rust API for memory-mapped file IO.")
   (license (list license:expat license:asl2.0))))

(define-public rust-gimli-0.29
  (package
   (name "rust-gimli")
   (version "0.29.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "gimli" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1zgzprnjaawmg6zyic4f2q2hc39kdhn116qnkqpgvsasgc3x9v20"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-fallible-iterator" ,rust-fallible-iterator-0.3)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                      ("rust-stable-deref-trait" ,rust-stable-deref-trait-1))))
   (home-page "https://github.com/gimli-rs/gimli")
   (synopsis "library for reading and writing the DWARF debugging format.")
   (description
    "This package provides a library for reading and writing the DWARF debugging
format.")
   (license (list license:expat license:asl2.0))))

(define-public rust-addr2line-0.22
  (package
   (name "rust-addr2line")
   (version "0.22.0")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "addr2line" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0y66f1sa27i9kvmlh76ynk60rxfrmkba9ja8x527h32wdb206ibf"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-compiler-builtins" ,rust-compiler-builtins-0.1)
                      ("rust-cpp-demangle" ,rust-cpp-demangle-0.4)
                      ("rust-fallible-iterator" ,rust-fallible-iterator-0.3)
                      ("rust-gimli" ,rust-gimli-0.29)
                      ("rust-memmap2" ,rust-memmap2-0.9)
                      ("rust-object" ,rust-object-0.35)
                      ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
                      ("rust-rustc-std-workspace-alloc" ,rust-rustc-std-workspace-alloc-1)
                      ("rust-rustc-std-workspace-core" ,rust-rustc-std-workspace-core-1)
                      ("rust-smallvec" ,rust-smallvec-1))))
   (home-page "https://github.com/gimli-rs/addr2line")
   (synopsis
    "cross-platform symbolication library written in Rust, using `gimli`")
   (description
    "This package provides a cross-platform symbolication library written in Rust,
using `gimli`.")
   (license (list license:asl2.0 license:expat))))

(define-public rust-backtrace-0.3
  (package
   (name "rust-backtrace")
   (version "0.3.73")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "backtrace" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "02iffg2pkg5nc36pgml8il7f77s138hhjw9f9l56v5zqlilk5hjw"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-addr2line" ,rust-addr2line-0.22)
                      ("rust-cc" ,rust-cc-1)
                      ("rust-cfg-if" ,rust-cfg-if-1)
                      ("rust-cpp-demangle" ,rust-cpp-demangle-0.4)
                      ("rust-libc" ,rust-libc-0.2)
                      ("rust-miniz-oxide" ,rust-miniz-oxide-0.7)
                      ("rust-object" ,rust-object-0.36)
                      ("rust-rustc-demangle" ,rust-rustc-demangle-0.1)
                      ("rust-serde" ,rust-serde-1)
                      )))
   (home-page "https://github.com/rust-lang/backtrace-rs")
   (synopsis
    "library to acquire a stack trace (backtrace) at runtime in a Rust program.")
   (description
    "This package provides a library to acquire a stack trace (backtrace) at runtime
in a Rust program.")
   (license (list license:expat license:asl2.0))))

(define-public rust-clap-builder-4
  (package
   (name "rust-clap-builder")
   (version "4.5.13")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap_builder" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "16adkdf8jbxpfn4jly54xn1ngwign57vwb5zgly877sflxz7vcb4"))))
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
    "simple to use, efficient, and full-featured Command Line Argument Parser")
   (description
    "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser.")
   (license (list license:expat license:asl2.0))))

(define-public rust-clap-4
  (package
   (name "rust-clap")
   (version "4.5.13")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "clap" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "1z5773cyvhb47rxflng7mi7vrkc4zw2f6xg47l7pja1l0l52dfqg"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-clap-builder" ,rust-clap-builder-4)
                      ("rust-clap-derive" ,rust-clap-derive-4))))
   (home-page "https://github.com/clap-rs/clap")
   (synopsis
    "simple to use, efficient, and full-featured Command Line Argument Parser")
   (description
    "This package provides a simple to use, efficient, and full-featured Command Line
Argument Parser.")
   (license (list license:expat license:asl2.0))))

(define-public rust-deelevate-0.2
  (package
    (name "rust-deelevate")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "deelevate" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
        (base32 "0kj2kcqv47l3iacpamgzbn742yf9d09h0xgwbadxs1l9qkw9fwqw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:cargo-inputs (("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-pathsearch" ,rust-pathsearch-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-shared-library" ,rust-shared-library-0.1)
                       ("rust-termwiz" ,rust-termwiz-0.15)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "")
    (synopsis "Drop privileges on Windows")
    (description "This package provides Drop privileges on Windows.")
    (license license:expat)))

(define-public rust-chrono-0.4
  (package
   (name "rust-chrono")
   (version "0.4.38")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "chrono" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "009l8vc5p8750vn02z30mblg4pv2qhkbfizhfwmzc6vpy5nr67x2"))))
   (build-system cargo-build-system)
   (arguments
    `(#:skip-build? #t
      #:cargo-inputs (("rust-android-tzdata" ,rust-android-tzdata-0.1)
                      ("rust-arbitrary" ,rust-arbitrary-1)
                      ("rust-iana-time-zone" ,rust-iana-time-zone-0.1)
                      ("rust-js-sys" ,rust-js-sys-0.3)
                      ("rust-num-traits" ,rust-num-traits-0.2)
                      ("rust-pure-rust-locales" ,rust-pure-rust-locales-0.8)
                      ("rust-rkyv" ,rust-rkyv-0.7)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                      )))
   (home-page "https://github.com/chronotope/chrono")
   (synopsis "Date and time library for Rust")
   (description "This package provides Date and time library for Rust.")
   (license (list license:expat license:asl2.0))))

(define-public starship
  (package
   (name "starship")
   (version "1.20.1")
   (source
    (origin
     (method url-fetch)
     (uri (crate-uri "starship" version))
     (file-name (string-append name "-" version ".tar.gz"))
     (sha256
      (base32 "0g880blxl94l4vfbnfvw74rzvh28fig6fs43mydifh4y85rs52n0"))))
   (build-system cargo-build-system)
   (arguments
    `(#:cargo-inputs (("rust-chrono" ,rust-chrono-0.4)
                      ("rust-clap" ,rust-clap-4)
                      ("rust-clap-complete" ,rust-clap-complete-4)
                      ("rust-dirs" ,rust-dirs-5)
                      ;; ("rust-dunce" ,rust-dunce-1)
                      ("rust-gethostname" ,rust-gethostname-0.5)
                      ("rust-gix" ,rust-gix-0.64)
                      ("rust-gix-features" ,rust-gix-features-0.38)
                      ("rust-guess-host-triple" ,rust-guess-host-triple-0.1)
		      ("rust-deelevate" ,rust-deelevate-0.2)
                      ("rust-home" ,rust-home-0.5)
                      ("rust-indexmap" ,rust-indexmap-2)
                      ("rust-log" ,rust-log-0.4)
                      ("rust-nix" ,rust-nix-0.29)
                      ("rust-notify-rust" ,rust-notify-rust-4)
                      ("rust-nu-ansi-term" ,rust-nu-ansi-term-0.50)
                      ("rust-once-cell" ,rust-once-cell-1)
                      ("rust-open" ,rust-open-5)
                      ("rust-os-info" ,rust-os-info-3)
                      ("rust-path-slash" ,rust-path-slash-0.2)
                      ("rust-pest" ,rust-pest-2)
                      ("rust-pest-derive" ,rust-pest-derive-2)
                      ("rust-process-control" ,rust-process-control-4)
                      ("rust-quick-xml" ,rust-quick-xml-0.36)
                      ("rust-rand" ,rust-rand-0.8)
                      ("rust-rayon" ,rust-rayon-1)
                      ("rust-regex" ,rust-regex-1)
                      ("rust-rust-ini" ,rust-rust-ini-0.21)
                      ("rust-schemars" ,rust-schemars-0.8)
                      ("rust-semver" ,rust-semver-1)
                      ("rust-serde" ,rust-serde-1)
                      ("rust-serde-json" ,rust-serde-json-1)
                      ("rust-sha1" ,rust-sha1-0.10)
                      ("rust-shadow-rs" ,rust-shadow-rs-0.30)
                      ("rust-shadow-rs" ,rust-shadow-rs-0.30)
                      ("rust-shell-words" ,rust-shell-words-1)
                      ("rust-starship-battery" ,rust-starship-battery-0.9)
                      ("rust-strsim" ,rust-strsim-0.11)
                      ("rust-systemstat" ,rust-systemstat-0.2)
                      ("rust-terminal-size" ,rust-terminal-size-0.3)
                      ("rust-toml" ,rust-toml-0.8)
                      ("rust-toml-edit" ,rust-toml-edit-0.22)
                      ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                      ("rust-unicode-width" ,rust-unicode-width-0.1)
                      ("rust-urlencoding" ,rust-urlencoding-2)
                      ("rust-versions" ,rust-versions-6)
                      ("rust-which" ,rust-which-6)
                      ("rust-yaml-rust2" ,rust-yaml-rust2-0.8))
      #:cargo-development-inputs (("rust-mockall" ,rust-mockall-0.13)
                                  ("rust-tempfile" ,rust-tempfile-3))
      #:cargo-test-flags '("--" "--skip" "windows_tests")
      ))
   (native-inputs
     (list pkg-config cmake))
   (inputs
    (list git))
   (home-page "https://starship.rs")
   (synopsis
    "The minimal, blazing-fast, and infinitely customizable prompt for any shell! âðï¸")
   (description
    "This package provides The minimal, blazing-fast, and infinitely customizable prompt for any shell!
âðï¸.")
   (license license:isc)))

starship
