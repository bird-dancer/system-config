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

(define-public rust-mockall-derive-0.12
  (package
    (name "rust-mockall-derive")
    (version "0.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "mockall_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1qhal0m997vy5vv8admrrbcibsq1cjkr1ajbypaa31f3kvkvqz5g"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/asomers/mockall")
    (synopsis "Procedural macros for Mockall
")
    (description "Procedural macros for Mockall")
    (license (list license:expat license:asl2.0))))

(define-public rust-fragile-2
  (package
    (name "rust-fragile")
    (version "2.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "fragile" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1ajfdnwdn921bhjlzyvsqvdgci8ab40ln6w9ly422lf8svb428bc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-slab" ,rust-slab-0.4))))
    (home-page "https://github.com/mitsuhiko/fragile")
    (synopsis
     "Provides wrapper types for sending non-send values to other threads.")
    (description
     "This package provides wrapper types for sending non-send values to other
threads.")
    (license license:asl2.0)))

(define-public rust-mockall-0.12
  (package
    (name "rust-mockall")
    (version "0.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "mockall" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0j0a1wx6sb8yimjgg3q1svrn8jsnaiz9zqgz93ihvc83a8mnqxj3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-downcast" ,rust-downcast-0.11)
                       ("rust-fragile" ,rust-fragile-2)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-mockall-derive" ,rust-mockall-derive-0.12)
                       ("rust-predicates" ,rust-predicates-3)
                       ("rust-predicates-tree" ,rust-predicates-tree-1))))
    (home-page "https://github.com/asomers/mockall")
    (synopsis "A powerful mock object library for Rust.
")
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
     "A ring buffer with a fixed capacity, which can be stored on the stack.")
    (description
     "This package provides a ring buffer with a fixed capacity, which can be stored
on the stack.")
    (license (list license:expat license:asl2.0))))

(define-public rust-yaml-rust2-0.8
  (package
    (name "rust-yaml-rust2")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "yaml-rust2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1yr5v9v312279r43inp84g079bcnzk076xfj9nfirskr5884v3s9"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arraydeque" ,rust-arraydeque-0.5)
                       ("rust-encoding-rs" ,rust-encoding-rs-0.8)
                       ("rust-hashlink" ,rust-hashlink-0.8))))
    (home-page "https://github.com/Ethiraric/yaml-rust2")
    (synopsis "A fully YAML 1.2 compliant YAML parser")
    (description
     "This package provides a fully YAML 1.2 compliant YAML parser")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-interface-0.53
  (package
    (name "rust-windows-interface")
    (version "0.53.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-interface" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0q4bb5zigzr3083kwb7qkhx63dlymwx8gy6mw7jgm25281qmacys"))))
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

(define-public rust-windows-implement-0.53
  (package
    (name "rust-windows-implement")
    (version "0.53.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-implement" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1gd05sw9knn8i7n9ip1kdwpxqcwmldja3w32m16chjcjprkc4all"))))
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

(define-public rust-windows-core-0.54
  (package
    (name "rust-windows-core")
    (version "0.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0r8x2sgl4qq1h23ldf4z7cj213k0bz7479m8a156h79mi6f1nrhj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-result" ,rust-windows-result-0.1)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "Rust for Windows")
    (license (list license:expat license:asl2.0))))

(define-public rust-windows-0.54
  (package
    (name "rust-windows")
    (version "0.54.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0j8vd8sg2rbln6g3a608qg1a7r2lwxcga78mmxjjin5ybmrfallj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-core" ,rust-windows-core-0.54)
                       ("rust-windows-implement" ,rust-windows-implement-0.53)
                       ("rust-windows-interface" ,rust-windows-interface-0.53)
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Rust for Windows")
    (description "Rust for Windows")
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

(define-public rust-versions-6
  (package
    (name "rust-versions")
    (version "6.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "versions" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0nxcqiqh0b89394144kkl5gcyvg4kl5yf8300x468yqnilgr7a1q"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-itertools" ,rust-itertools-0.12)
                       ("rust-nom" ,rust-nom-7)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/fosskers/rs-versions")
    (synopsis "A library for parsing and comparing software version numbers.")
    (description
     "This package provides a library for parsing and comparing software version
numbers.")
    (license license:expat)))

(define-public rust-unicode-segmentation-1
  (package
    (name "rust-unicode-segmentation")
    (version "1.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "unicode-segmentation" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "00kjpwp1g8fqm45drmwivlacn3y9jx73bvs09n6s3x73nqi7vj6l"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/unicode-rs/unicode-segmentation")
    (synopsis
     "This crate provides Grapheme Cluster, Word and Sentence boundaries
according to Unicode Standard Annex #29 rules.
")
    (description
     "This crate provides Grapheme Cluster, Word and Sentence boundaries according to
Unicode Standard Annex #29 rules.")
    (license (list license:expat license:asl2.0))))

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
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/valpackett/systemstat")
    (synopsis "Get system information/statistics in a cross-platform way")
    (description "Get system information/statistics in a cross-platform way")
    (license license:unlicense)))

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
    (description "Units of measurement")
    (license (list license:asl2.0 license:expat))))

(define-public rust-starship-battery-0.8
  (package
    (name "rust-starship-battery")
    (version "0.8.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "starship-battery" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "04c3lqnv9gvrz7ns7ycpx6w04zfbi5bimss6azv5whsg6z3w2nvj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-core-foundation" ,rust-core-foundation-0.9)
                       ("rust-lazycell" ,rust-lazycell-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-mach2" ,rust-mach2-0.4)
                       ("rust-nix" ,rust-nix-0.28)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-schemars" ,rust-schemars-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-uom" ,rust-uom-0.36)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/starship/rust-battery")
    (synopsis "Cross-platform information about the notebook batteries")
    (description "Cross-platform information about the notebook batteries")
    (license license:isc)))

(define-public rust-tzdb-data-0.1
  (package
    (name "rust-tzdb-data")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tzdb_data" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1mlqm5z8324hw2gnwhlgfn6as8cv5qhdahjwv70nb7f0zbgrz26i"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-tz-rs" ,rust-tz-rs-0.6))))
    (home-page "https://github.com/Kijewski/tzdb")
    (synopsis "Static, #![no_std] time zone information for tz-rs")
    (description "Static, #![no_std] time zone information for tz-rs")
    (license license:expat-0)))

(define-public rust-const-fn-0.4
  (package
    (name "rust-const-fn")
    (version "0.4.10")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "const_fn" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "038x468fyyyfwxzhg415m860xmaqzxsj4mi0vdv2i210maprygip"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/taiki-e/const_fn")
    (synopsis
     "A lightweight attribute for easy generation of const functions with conditional compilations.
")
    (description
     "This package provides a lightweight attribute for easy generation of const
functions with conditional compilations.")
    (license (list license:asl2.0 license:expat))))

(define-public rust-tz-rs-0.6
  (package
    (name "rust-tz-rs")
    (version "0.6.14")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tz-rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1d720z3p6g65awzv3924dipjnldrdsv6np0h9g7x5yj8r0aip19k"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-const-fn" ,rust-const-fn-0.4))))
    (home-page "https://github.com/x-hgg-x/tz-rs")
    (synopsis
     "A pure Rust reimplementation of libc functions localtime, gmtime and mktime.")
    (description
     "This package provides a pure Rust reimplementation of libc functions localtime,
gmtime and mktime.")
    (license (list license:expat license:asl2.0))))

(define-public rust-tzdb-0.6
  (package
    (name "rust-tzdb")
    (version "0.6.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tzdb" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1cbzd2c4bs9ik9dpwbacw6j08kakbnjikdndcxbrza2z6rmhyn0v"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-iana-time-zone" ,rust-iana-time-zone-0.1)
                       ("rust-tz-rs" ,rust-tz-rs-0.6)
                       ("rust-tzdb-data" ,rust-tzdb-data-0.1))))
    (home-page "https://github.com/Kijewski/tzdb")
    (synopsis "Static time zone information for tz-rs")
    (description "Static time zone information for tz-rs")
    (license license:asl2.0)))

(define-public rust-libgit2-sys-0.16
  (package
    (name "rust-libgit2-sys")
    (version "0.16.2+1.7.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "libgit2-sys" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1s149nkximw3n42925rp0jax1sf1zmf8gpcim2g9sp7fnkc2chgf"))))
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
    (description "Native bindings to the libgit2 library")
    (license (list license:expat license:asl2.0))))

(define-public rust-git2-0.18
  (package
    (name "rust-git2")
    (version "0.18.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "git2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0w7gcq6v9kdlh0vcv27xrk09c1bhkarqhnp52pvnnximzrxnlbi3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-libgit2-sys" ,rust-libgit2-sys-0.16)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-openssl-probe" ,rust-openssl-probe-0.1)
                       ("rust-openssl-sys" ,rust-openssl-sys-0.9)
                       ("rust-url" ,rust-url-2))))
    (home-page "https://github.com/rust-lang/git2-rs")
    (synopsis
     "Bindings to libgit2 for interoperating with git repositories. This library is
both threadsafe and memory safe and allows both reading and writing git
repositories.
")
    (description
     "Bindings to libgit2 for interoperating with git repositories.  This library is
both threadsafe and memory safe and allows both reading and writing git
repositories.")
    (license (list license:expat license:asl2.0))))

(define-public rust-shadow-rs-0.27
  (package
    (name "rust-shadow-rs")
    (version "0.27.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "shadow-rs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0a01fm2mc7gkq5c5lsgm2l8jvl3b2gvrggvybsqinsblpbbcnq3r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-const-format" ,rust-const-format-0.2)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-git2" ,rust-git2-0.18)
                       ("rust-is-debug" ,rust-is-debug-1)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-tzdb" ,rust-tzdb-0.6))))
    (home-page "https://github.com/baoyachi/shadow-rs")
    (synopsis "A build-time information stored in your rust project")
    (description
     "This package provides a build-time information stored in your rust project")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-json-1
  (package
    (name "rust-serde-json")
    (version "1.0.116")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_json" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "04r81f5myl41zrsyghnbmbl39c4n3azldb9zxfafnzyi4rqxn5ry"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-indexmap" ,rust-indexmap-2)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-ryu" ,rust-ryu-1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/serde-rs/json")
    (synopsis "A JSON serialization file format")
    (description "This package provides a JSON serialization file format")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-derive-1
  (package
    (name "rust-serde-derive")
    (version "1.0.198")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1nb6hn1xpvhih00x6jkfm42na6pwz59h2zayj2x865xhd6wdm3p8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://serde.rs")
    (synopsis "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (description
     "Macros 1.1 implementation of #[derive(Serialize, Deserialize)]")
    (license (list license:expat license:asl2.0))))

(define-public rust-serde-1
  (package
    (name "rust-serde")
    (version "1.0.198")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "serde" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1k0z8mwkkl46bwfk16z7v8xidi5pwnj4a9fsf42k8cchjw6a8ilq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde-derive" ,rust-serde-derive-1)
                       ("rust-serde-derive" ,rust-serde-derive-1))))
    (home-page "https://serde.rs")
    (synopsis "A generic serialization/deserialization framework")
    (description
     "This package provides a generic serialization/deserialization framework")
    (license (list license:expat license:asl2.0))))

(define-public rust-semver-1
  (package
    (name "rust-semver")
    (version "1.0.22")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "semver" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1jir6q2ps4s5v52bqxpvwj35p0m0ahl5pf62ppwksbv5kvk3zm4j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/dtolnay/semver")
    (synopsis "Parser and evaluator for Cargo's flavor of Semantic Versioning")
    (description
     "Parser and evaluator for Cargo's flavor of Semantic Versioning")
    (license (list license:expat license:asl2.0))))

(define-public rust-schemars-derive-0.8
  (package
    (name "rust-schemars-derive")
    (version "0.8.16")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "schemars_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0rq9sdcf5hyvsyj9v9nfy2jgjbjzaldjq4i6y2fcz72xlrpzsry7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-serde-derive-internals" ,rust-serde-derive-internals-0.26)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://graham.cool/schemars/")
    (synopsis "Macros for #[derive(JsonSchema)], for use with schemars")
    (description
     "Macros for #[derive(@code{JsonSchema})], for use with schemars")
    (license license:expat)))

(define-public rust-schemars-0.8
  (package
    (name "rust-schemars")
    (version "0.8.16")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "schemars" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0aadpjkaq7yl11b02pg4mwanylck328zg0q7w56dv6j89568z8j5"))))
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
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-indexmap" ,rust-indexmap-2)
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
    (description "Generate JSON Schemas from Rust code")
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
    (synopsis "In-place trimming strings.")
    (description "In-place trimming strings.")
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
    (description "An Ini configuration file parsing library in Rust")
    (license license:expat)))

(define-public rust-wasm-sync-0.1
  (package
    (name "rust-wasm-sync")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wasm_sync" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1smhpgk5jiir089y5w6y2rgqq9aqzrbxlb4x1vzl3v3zvv561wyg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-js-sys" ,rust-js-sys-0.3)
                       ("rust-wasm-bindgen" ,rust-wasm-bindgen-0.2)
                       ("rust-web-sys" ,rust-web-sys-0.3))))
    (home-page "https://github.com/DouglasDwyer/wasm_sync")
    (synopsis "Synchronization primitives for both web and native.
")
    (description "Synchronization primitives for both web and native.")
    (license (list license:expat license:asl2.0))))

(define-public rust-rayon-core-1
  (package
    (name "rust-rayon-core")
    (version "1.12.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rayon-core" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1qpwim68ai5h0j7axa8ai8z0payaawv3id0lrgkqmapx7lx8fr8l"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-crossbeam-deque" ,rust-crossbeam-deque-0.8)
                       ("rust-crossbeam-utils" ,rust-crossbeam-utils-0.8)
                       ("rust-wasm-sync" ,rust-wasm-sync-0.1))))
    (home-page "https://github.com/rayon-rs/rayon")
    (synopsis "Core APIs for Rayon")
    (description "Core APIs for Rayon")
    (license (list license:expat license:asl2.0))))

(define-public rust-rayon-1
  (package
    (name "rust-rayon")
    (version "1.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "rayon" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1ylgnzwgllajalr4v00y4kj22klq2jbwllm70aha232iah0sc65l"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-either" ,rust-either-1)
                       ("rust-rayon-core" ,rust-rayon-core-1)
                       ("rust-wasm-sync" ,rust-wasm-sync-0.1))))
    (home-page "https://github.com/rayon-rs/rayon")
    (synopsis "Simple work-stealing parallelism for Rust")
    (description "Simple work-stealing parallelism for Rust")
    (license (list license:expat license:asl2.0))))

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
                       ("rust-signal-hook" ,rust-signal-hook-0.3)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://github.com/dylni/process_control")
    (synopsis "Ergonomically run processes with limits
")
    (description "Ergonomically run processes with limits")
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
     "A crate of the gitoxide project for shared worktree related types and utilities.")
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
     "A crate of the gitoxide project dealing with finding names for revisions and parsing specifications")
    (description
     "This package provides a crate of the gitoxide project dealing with finding names
for revisions and parsing specifications")
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
     "A crate of the gitoxide project for parsing and representing refspecs")
    (description
     "This package provides a crate of the gitoxide project for parsing and
representing refspecs")
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
     "A crate of the gitoxide project dedicated to implementing the git transport layer")
    (description
     "This package provides a crate of the gitoxide project dedicated to implementing
the git transport layer")
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
    (synopsis "A crate of the gitoxide project for implementing git protocols")
    (description
     "This package provides a crate of the gitoxide project for implementing git
protocols")
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
     "This package implements git packs and related data structures")
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
    (description "This package implements various git object databases")
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
    (synopsis "A crate of the gitoxide project for parsing mailmap files")
    (description
     "This package provides a crate of the gitoxide project for parsing mailmap files")
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
    (synopsis "A crate of the gitoxide project")
    (description "This package provides a crate of the gitoxide project")
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
     "A work-in-progress crate of the gitoxide project dedicated implementing the git index file")
    (description
     "This package provides a work-in-progress crate of the gitoxide project dedicated
implementing the git index file")
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
    (synopsis "A crate of the gitoxide project dealing .gitignore files")
    (description
     "This package provides a crate of the gitoxide project dealing .gitignore files")
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
                       ("rust-dunce" ,rust-dunce-1)
                       ("rust-gix-hash" ,rust-gix-hash-0.11)
                       ("rust-gix-path" ,rust-gix-path-0.8)
                       ("rust-gix-ref" ,rust-gix-ref-0.29)
                       ("rust-gix-sec" ,rust-gix-sec-0.8)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "Discover git repositories and check if a directory is a git repository")
    (description
     "Discover git repositories and check if a directory is a git repository")
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
    (description "Calculate differences between various git objects")
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
     "A crate of the gitoxide project implementing parsing and serialization of gix-url")
    (description
     "This package provides a crate of the gitoxide project implementing parsing and
serialization of gix-url")
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
     "A crate of the gitoxide project to interact with git credentials helpers")
    (description
     "This package provides a crate of the gitoxide project to interact with git
credentials helpers")
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
     "Immutable and mutable git objects with decoding and encoding support")
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
     "A tempfile implementation with a global registry to assure cleanup")
    (description
     "This package provides a tempfile implementation with a global registry to assure
cleanup")
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
    (synopsis "A git-style lock-file implementation")
    (description "This package provides a git-style lock-file implementation")
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
    (synopsis "A crate providing file system specific utilities to `gitoxide`")
    (description
     "This package provides a crate providing file system specific utilities to
`gitoxide`")
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
    (synopsis "A crate to handle git references")
    (description "This package provides a crate to handle git references")
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
    (synopsis "A git-config file parser and editor from the gitoxide project")
    (description
     "This package provides a git-config file parser and editor from the gitoxide
project")
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
    (synopsis "A crate of the gitoxide project dealing with pattern matching")
    (description
     "This package provides a crate of the gitoxide project dealing with pattern
matching")
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
    (synopsis "A crate of the gitoxide project dealing .gitattributes files")
    (description
     "This package provides a crate of the gitoxide project dealing .gitattributes
files")
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
     "TUI widgets using a react-like paradigm, allowing mutable component state and render properties.")
    (description
     "TUI widgets using a react-like paradigm, allowing mutable component state and
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
    (description "utilities for `crossterm`, without ties to `termion`")
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
     "A dashboard for visualizing progress of asynchronous and possibly blocking tasks")
    (description
     "This package provides a dashboard for visualizing progress of asynchronous and
possibly blocking tasks")
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
     "A crate to integrate various capabilities using compile-time feature flags")
    (description
     "This package provides a crate to integrate various capabilities using
compile-time feature flags")
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
    (synopsis "A way to identify git actors")
    (description "This package provides a way to identify git actors")
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
    (description "Interact with git repositories just like git would")
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
     "Forwards a byte string with ANSI escape code to a termcolor terminal")
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
    (synopsis "Helpers for interacting with crates.io
")
    (description "Helpers for interacting with crates.io")
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
                       ("rust-walkdir" ,rust-walkdir-2)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://doc.rust-lang.org/cargo/index.html")
    (synopsis "Cargo, a package manager for Rust.
")
    (description "Cargo, a package manager for Rust.")
    (license (list license:expat license:asl2.0))))

(define-public rust-pest-meta-2
  (package
    (name "rust-pest-meta")
    (version "2.7.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pest_meta" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1jpdriddnqaa6z0ls3gyhmal695bh63kjdg8xk52hvvpp6dz5nra"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cargo" ,rust-cargo-0.72)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-pest" ,rust-pest-2)
                       ("rust-sha2" ,rust-sha2-0.10))))
    (home-page "https://pest.rs/")
    (synopsis "pest meta language parser and validator")
    (description "pest meta language parser and validator")
    (license (list license:expat license:asl2.0))))

(define-public rust-pest-generator-2
  (package
    (name "rust-pest-generator")
    (version "2.7.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pest_generator" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1gg8cslrxb3kwydv869z2f1l2gwinckc1zb5a7vi5cgslg8fwpn3"))))
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
    (description "pest code generator")
    (license (list license:expat license:asl2.0))))

(define-public rust-pest-derive-2
  (package
    (name "rust-pest-derive")
    (version "2.7.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pest_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "177n5d2bmkw7c0wdal65nfyd53w6gx6h3951rpp9f8fkasql2dgp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-pest" ,rust-pest-2)
                       ("rust-pest-generator" ,rust-pest-generator-2))))
    (home-page "https://pest.rs/")
    (synopsis "pest's derive macro")
    (description "pest's derive macro")
    (license (list license:expat license:asl2.0))))

(define-public rust-pest-2
  (package
    (name "rust-pest")
    (version "2.7.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "pest" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "158ckwp6cnljwcici05ix2j17iiq05wnsc9ny01bi9z1vrcv07ri"))))
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
    (description "The Elegant Parser")
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
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://github.com/stanislav-tkach/os_info")
    (synopsis "Detect the operating system type and version.")
    (description "Detect the operating system type and version.")
    (license license:expat)))

(define-public rust-is-docker-0.2
  (package
    (name "rust-is-docker")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "is-docker" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1cyibrv6817cqcpf391m327ss40xlbik8wxcv5h9pj9byhksx2wj"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-once-cell" ,rust-once-cell-1))))
    (home-page "https://github.com/TheLarkInn/is-docker")
    (synopsis "Checks if the process is running inside a Docker container.")
    (description "Checks if the process is running inside a Docker container.")
    (license license:expat)))

(define-public rust-is-wsl-0.4
  (package
    (name "rust-is-wsl")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "is-wsl" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "19bs5pq221d4bknnwiqqkqrnsx2in0fsk8fylxm1747iim4hjdhp"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-is-docker" ,rust-is-docker-0.2)
                       ("rust-once-cell" ,rust-once-cell-1))))
    (home-page "https://github.com/TheLarkInn/is-wsl")
    (synopsis
     "Checks if the process is running inside Windows Subsystem for Linux.")
    (description
     "Checks if the process is running inside Windows Subsystem for Linux.")
    (license license:expat)))

(define-public rust-open-5
  (package
    (name "rust-open")
    (version "5.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "open" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0ciy22dh82rdgmmsiai2wksx7sj9abb4ddnmxpqxnpfqapw0z7s4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-is-wsl" ,rust-is-wsl-0.4)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-pathdiff" ,rust-pathdiff-0.2))))
    (home-page "https://github.com/Byron/open-rs")
    (synopsis "Open a path or URL using the program configured on the system")
    (description
     "Open a path or URL using the program configured on the system")
    (license license:expat)))

(define-public rust-nu-ansi-term-0.50
  (package
    (name "rust-nu-ansi-term")
    (version "0.50.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nu-ansi-term" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "057zhc62hcaxc73zfjwq7gir5bfilmx652hnh9krdp0babhh0a6x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.48))))
    (home-page "https://github.com/nushell/nu-ansi-term")
    (synopsis "Library for ANSI terminal colors and styles (bold, underline)")
    (description
     "Library for ANSI terminal colors and styles (bold, underline)")
    (license license:expat)))

(define-public rust-zvariant-derive-4
  (package
    (name "rust-zvariant-derive")
    (version "4.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zvariant_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1g11wn8k9r38q4jgsrwml10wpb0p6777g7q3d4xic5ik0qvb595p"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-3)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-zvariant-utils" ,rust-zvariant-utils-1))))
    (home-page "https://github.com/dbus2/zbus/")
    (synopsis "D-Bus & GVariant encoding & decoding")
    (description "D-Bus & GVariant encoding & decoding")
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
     "    Procedural macros for the time crate.
    This crate is an implementation detail and should not be relied upon directly.
")
    (description
     "Procedural macros for the time crate.  This crate is an implementation detail
and should not be relied upon directly.")
    (license (list license:expat license:asl2.0))))

(define-public rust-num-conv-0.1
  (package
    (name "rust-num-conv")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "num-conv" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1ndiyg82q73783jq18isi71a7mjh56wxrk52rlvyx0mi5z9ibmai"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/jhpratt/num-conv")
    (synopsis
     "`num_conv` is a crate to convert between integer types without using `as` casts. This provides
better certainty when refactoring, makes the exact behavior of code more explicit, and allows using
turbofish syntax.
")
    (description
     "`num_conv` is a crate to convert between integer types without using `as` casts.
 This provides better certainty when refactoring, makes the exact behavior of
code more explicit, and allows using turbofish syntax.")
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
     "Date and time library. Fully interoperable with the standard library. Mostly compatible with #![no_std].")
    (description
     "Date and time library.  Fully interoperable with the standard library.  Mostly
compatible with #![no_std].")
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
    (synopsis "A simple endian-handling library")
    (description "This package provides a simple endian-handling library")
    (license license:expat)))

(define-public rust-zvariant-4
  (package
    (name "rust-zvariant")
    (version "4.0.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zvariant" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "16iq2qk8kfsi8lykgr9f8wjvln8p5d5wkgqy1zdglyv6vfk3q6rc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.7)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-endi" ,rust-endi-1)
                       ("rust-enumflags2" ,rust-enumflags2-0.7)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-bytes" ,rust-serde-bytes-0.11)
                       ("rust-static-assertions" ,rust-static-assertions-1)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-url" ,rust-url-2)
                       ("rust-uuid" ,rust-uuid-1)
                       ("rust-zvariant-derive" ,rust-zvariant-derive-4))))
    (home-page "https://github.com/dbus2/zbus/")
    (synopsis "D-Bus & GVariant encoding & decoding")
    (description "D-Bus & GVariant encoding & decoding")
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
    (synopsis "A collection of D-Bus bus names types")
    (description "This package provides a collection of D-Bus bus names types")
    (license license:expat)))

(define-public rust-zvariant-utils-1
  (package
    (name "rust-zvariant-utils")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zvariant_utils" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0wl17k3jd0z66grkc3nfrrd24l35pjhy5zkk312i5k4kl4bdpgh0"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/dbus2/zbus/")
    (synopsis "Various utilities used internally by the zvariant crate.")
    (description "Various utilities used internally by the zvariant crate.")
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

(define-public rust-zbus-macros-4
  (package
    (name "rust-zbus-macros")
    (version "4.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zbus_macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1q1khqh0dbqyhrp8c38mcka7p3s659xfdbv2jjfb9k9xr593h3jf"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro-crate" ,rust-proc-macro-crate-3)
                       ("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-syn" ,rust-syn-1)
                       ("rust-zvariant-utils" ,rust-zvariant-utils-1))))
    (home-page "https://github.com/dbus2/zbus/")
    (synopsis "proc-macros for zbus")
    (description "proc-macros for zbus")
    (license license:expat)))

(define-public rust-xdg-home-1
  (package
    (name "rust-xdg-home")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "xdg-home" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "13mkcfgngnc1fpdg5737hvhjkp95bc9w2ngqdjnri0ybqcjs7r91"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/zeenix/xdg-home")
    (synopsis "The user's home directory as per XDG Specification")
    (description "The user's home directory as per XDG Specification")
    (license license:expat)))

(define-public rust-vsock-0.4
  (package
    (name "rust-vsock")
    (version "0.4.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "vsock" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0d9g87dvwm6zzq8n6rrnj57fmlfyr4km4rd7ykqi42c3fix6xyrd"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-libc" ,rust-libc-0.2)
                       ("rust-nix" ,rust-nix-0.27))))
    (home-page "https://github.com/rust-vsock/vsock-rs")
    (synopsis "Virtio socket support for Rust")
    (description "Virtio socket support for Rust")
    (license license:asl2.0)))

(define-public rust-tonic-0.8
  (package
    (name "rust-tonic")
    (version "0.8.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tonic" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1yymp2xi1p60g81p5jfaybcawpfkb01vqvzqn4cyz6wj7fnry8cg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-stream" ,rust-async-stream-0.3)
                       ("rust-async-trait" ,rust-async-trait-0.1)
                       ("rust-axum" ,rust-axum-0.6)
                       ("rust-base64" ,rust-base64-0.13)
                       ("rust-bytes" ,rust-bytes-1)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-h2" ,rust-h2-0.3)
                       ("rust-http" ,rust-http-0.2)
                       ("rust-http-body" ,rust-http-body-0.4)
                       ("rust-hyper" ,rust-hyper-0.14)
                       ("rust-hyper-timeout" ,rust-hyper-timeout-0.4)
                       ("rust-percent-encoding" ,rust-percent-encoding-2)
                       ("rust-pin-project" ,rust-pin-project-1)
                       ("rust-prost" ,rust-prost-0.11)
                       ("rust-prost-derive" ,rust-prost-derive-0.11)
                       ("rust-rustls-native-certs" ,rust-rustls-native-certs-0.6)
                       ("rust-rustls-pemfile" ,rust-rustls-pemfile-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-rustls" ,rust-tokio-rustls-0.23)
                       ("rust-tokio-stream" ,rust-tokio-stream-0.1)
                       ("rust-tokio-util" ,rust-tokio-util-0.7)
                       ("rust-tower" ,rust-tower-0.4)
                       ("rust-tower-layer" ,rust-tower-layer-0.3)
                       ("rust-tower-service" ,rust-tower-service-0.3)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-tracing-futures" ,rust-tracing-futures-0.2)
                       ("rust-webpki-roots" ,rust-webpki-roots-0.22))))
    (home-page "https://github.com/hyperium/tonic")
    (synopsis
     "A gRPC over HTTP/2 implementation focused on high performance, interoperability, and flexibility.
")
    (description
     "This package provides a @code{gRPC} over HTTP/2 implementation focused on high
performance, interoperability, and flexibility.")
    (license license:expat)))

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
    (description "Asynchronous Virtio socket support for Rust")
    (license license:asl2.0)))

(define-public rust-enumflags2-derive-0.7
  (package
    (name "rust-enumflags2-derive")
    (version "0.7.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "enumflags2_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1i1vjp2si8jq7cib97c26d3cysm0xip30fs5f84l46qv0xs54y2w"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/meithecatte/enumflags2")
    (synopsis
     "Do not use directly, use the reexport in the `enumflags2` crate. This allows for better compatibility across versions.")
    (description
     "Do not use directly, use the reexport in the `enumflags2` crate.  This allows
for better compatibility across versions.")
    (license (list license:expat license:asl2.0))))

(define-public rust-enumflags2-0.7
  (package
    (name "rust-enumflags2")
    (version "0.7.9")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "enumflags2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "13cfkn555q8v6rrbld8m2xjb14pnap9w1x5wv98hlpk7zgawjy1j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-enumflags2-derive" ,rust-enumflags2-derive-0.7)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/meithecatte/enumflags2")
    (synopsis "Enum-based bit flags")
    (description "Enum-based bit flags")
    (license (list license:expat license:asl2.0))))

(define-public rust-blocking-1
  (package
    (name "rust-blocking")
    (version "1.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "blocking" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "064i3d6b8ln34fgdw49nmx9m36bwi3r3nv8c9xhcrpf4ilz92dva"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-channel" ,rust-async-channel-2)
                       ("rust-async-lock" ,rust-async-lock-3)
                       ("rust-async-task" ,rust-async-task-4)
                       ("rust-fastrand" ,rust-fastrand-2)
                       ("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-futures-lite" ,rust-futures-lite-2)
                       ("rust-piper" ,rust-piper-0.2)
                       ("rust-tracing" ,rust-tracing-0.1))))
    (home-page "https://github.com/smol-rs/blocking")
    (synopsis "A thread pool for isolating blocking I/O in async programs")
    (description
     "This package provides a thread pool for isolating blocking I/O in async programs")
    (license (list license:asl2.0 license:expat))))

(define-public rust-async-recursion-1
  (package
    (name "rust-async-recursion")
    (version "1.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "async-recursion" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1i8fmzj4nvkgws1h2q6mxnxn042sdcxpywhs7irvzvwkvq7fzi9h"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/dcchut/async-recursion")
    (synopsis "Recursion for async functions")
    (description "Recursion for async functions")
    (license (list license:expat license:asl2.0))))

(define-public rust-async-task-4
  (package
    (name "rust-async-task")
    (version "4.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "async-task" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "16975vx6aqy5yf16fs9xz5vx1zq8mwkzfmykvcilc1j7b6c6xczv"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-portable-atomic" ,rust-portable-atomic-1))))
    (home-page "https://github.com/smol-rs/async-task")
    (synopsis "Task abstraction for building executors")
    (description "Task abstraction for building executors")
    (license (list license:asl2.0 license:expat))))

(define-public rust-async-process-2
  (package
    (name "rust-async-process")
    (version "2.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "async-process" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0z9r5zi3dl479afw779dw2l5pchcx3fzx115rf94mq4l30qccgx5"))))
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
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://github.com/smol-rs/async-process")
    (synopsis "Async interface for working with processes")
    (description "Async interface for working with processes")
    (license (list license:asl2.0 license:expat))))

(define-public rust-async-fs-2
  (package
    (name "rust-async-fs")
    (version "2.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "async-fs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "18dbwan238f3xdisb5x6pnrw6j95xp97srq54hgr51zjf4qnh6dw"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-lock" ,rust-async-lock-3)
                       ("rust-blocking" ,rust-blocking-1)
                       ("rust-futures-lite" ,rust-futures-lite-2))))
    (home-page "https://github.com/smol-rs/async-fs")
    (synopsis "Async filesystem primitives")
    (description "Async filesystem primitives")
    (license (list license:asl2.0 license:expat))))

(define-public rust-async-executor-1
  (package
    (name "rust-async-executor")
    (version "1.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "async-executor" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "16mj0v0ahpidhvyl739gh8dlnzp4qhi8p3ynk48kbcvq743040mi"))))
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
    (description "Async executor")
    (license (list license:asl2.0 license:expat))))

(define-public rust-event-listener-strategy-0.5
  (package
    (name "rust-event-listener-strategy")
    (version "0.5.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "event-listener-strategy" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1cxb9h93snr2kibwn0s5rnds0791g045i1lb8pl0s2yj4g5m2brk"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-event-listener" ,rust-event-listener-5)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/smol-rs/event-listener-strategy")
    (synopsis "Block or poll on event_listener easily")
    (description "Block or poll on event_listener easily")
    (license (list license:asl2.0 license:expat))))

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

(define-public rust-async-broadcast-0.7
  (package
    (name "rust-async-broadcast")
    (version "0.7.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "async-broadcast" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1nybg8i495m380rr7xj7z2xigdpf1b7qcb9vg04ry6vlmahm52r5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-event-listener" ,rust-event-listener-5)
                       ("rust-event-listener-strategy" ,rust-event-listener-strategy-0.5)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2))))
    (home-page "https://github.com/smol-rs/async-broadcast")
    (synopsis "Async broadcast channels")
    (description "Async broadcast channels")
    (license (list license:expat license:asl2.0))))

(define-public rust-zbus-4
  (package
    (name "rust-zbus")
    (version "4.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zbus" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1fcazz10kkix32yl2py4skimfcdww0rlf1bjs076kgaslbr4dzy9"))))
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
                       ("rust-derivative" ,rust-derivative-2)
                       ("rust-enumflags2" ,rust-enumflags2-0.7)
                       ("rust-event-listener" ,rust-event-listener-5)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-sink" ,rust-futures-sink-0.3)
                       ("rust-futures-util" ,rust-futures-util-0.3)
                       ("rust-hex" ,rust-hex-0.4)
                       ("rust-nix" ,rust-nix-0.28)
                       ("rust-ordered-stream" ,rust-ordered-stream-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-repr" ,rust-serde-repr-0.1)
                       ("rust-sha1" ,rust-sha1-0.10)
                       ("rust-static-assertions" ,rust-static-assertions-1)
                       ("rust-tokio" ,rust-tokio-1)
                       ("rust-tokio-vsock" ,rust-tokio-vsock-0.4)
                       ("rust-tracing" ,rust-tracing-0.1)
                       ("rust-uds-windows" ,rust-uds-windows-1)
                       ("rust-vsock" ,rust-vsock-0.4)
                       ("rust-windows-sys" ,rust-windows-sys-0.52)
                       ("rust-xdg-home" ,rust-xdg-home-1)
                       ("rust-zbus-macros" ,rust-zbus-macros-4)
                       ("rust-zbus-names" ,rust-zbus-names-3)
                       ("rust-zvariant" ,rust-zvariant-4))))
    (home-page "https://github.com/dbus2/zbus/")
    (synopsis "API for D-Bus communication")
    (description "API for D-Bus communication")
    (license license:expat)))

(define-public rust-windows-version-0.1
  (package
    (name "rust-windows-version")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "windows-version" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "05a5hia3d2vxd16vj2hxiyicxaqdjcm9sgpip4pzza4vgi2sm639"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/microsoft/windows-rs")
    (synopsis "Windows version information")
    (description "Windows version information")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-tauri-winrt-notification-0.2
  (package
    (name "rust-tauri-winrt-notification")
    (version "0.2.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tauri-winrt-notification" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0wb8d0fdzvgs4kmnhc2znx00n5cnh40ajawvblgkhqkg1nvmz7zq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-quick-xml" ,rust-quick-xml-0.31)
                       ("rust-windows" ,rust-windows-0.56)
                       ("rust-windows-version" ,rust-windows-version-0.1))))
    (home-page "https://github.com/tauri-apps/winrt-notification")
    (synopsis "An incomplete wrapper over the WinRT toast api")
    (description "An incomplete wrapper over the @code{WinRT} toast api")
    (license (list license:expat license:asl2.0))))

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
    (synopsis "Thin wrapper around macOS Notifications.")
    (description "Thin wrapper around @code{macOS} Notifications.")
    (license license:expat)))

(define-public rust-zune-jpeg-0.4
  (package
    (name "rust-zune-jpeg")
    (version "0.4.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "zune-jpeg" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0j74rzx82w9zwfqvzrg7k67l77qp3g577w33scrn3zd1l926p1pc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-zune-core" ,rust-zune-core-0.4))))
    (home-page
     "https://github.com/etemesi254/zune-image/tree/dev/crates/zune-jpeg")
    (synopsis "A fast, correct and safe jpeg decoder")
    (description "This package provides a fast, correct and safe jpeg decoder")
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
    (home-page "https://github.com/etemesi254/zune-image/tree/dev/zune-core")
    (synopsis
     "Core utilities for image processing in the zune family of crates")
    (description
     "Core utilities for image processing in the zune family of crates")
    (license (list license:expat license:asl2.0 license:zlib))))

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
     "Library for reading/writing numbers in big-endian and little-endian.")
    (description
     "Library for reading/writing numbers in big-endian and little-endian.")
    (license (list license:unlicense license:expat))))

(define-public rust-image-webp-0.1
  (package
    (name "rust-image-webp")
    (version "0.1.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "image-webp" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0b97mpyy8drb2r07rjchd9k035g5bccczz87znfphk9wb22v0c6p"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-byteorder-lite" ,rust-byteorder-lite-0.1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/image-rs/image-webp")
    (synopsis "WebP encoding and decoding in pure Rust")
    (description "@code{WebP} encoding and decoding in pure Rust")
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
    (synopsis "Fast LZW compression and decompression.")
    (description "Fast LZW compression and decompression.")
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
    (description "GIF de- and encoder")
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
    (description "a library to perform image color model conversion")
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
    (description "FFI bindings to dav1d")
    (license license:expat)))

(define-public rust-byte-slice-cast-1
  (package
    (name "rust-byte-slice-cast")
    (version "1.2.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "byte-slice-cast" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "033vv1qddzsj9yfsam4abj55rp60digngcr9a8wgv9pccf5rzb63"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://github.com/sdroege/bytes-num-slice-cast")
    (synopsis
     "Safely cast bytes slices from/to slices of built-in fundamental numeric types")
    (description
     "Safely cast bytes slices from/to slices of built-in fundamental numeric types")
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
    (description "Multimedia data structures")
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
    (description "libdav1d bindings")
    (license license:expat)))

(define-public rust-image-0.25
  (package
    (name "rust-image")
    (version "0.25.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "image" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "049xrrdvxaj23zlhqwzmz6j8b9xcc79smgi4qn97cqkkwxhdcm7x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-byteorder" ,rust-byteorder-1)
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
     "Imaging library. Provides basic image processing and encoders/decoders for common image formats.")
    (description
     "Imaging library.  Provides basic image processing and encoders/decoders for
common image formats.")
    (license (list license:expat license:asl2.0))))

(define-public rust-notify-rust-4
  (package
    (name "rust-notify-rust")
    (version "4.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "notify-rust" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "07sm3499dlrd2lbpqky7f1jlkccwkyrv5xqkyd27cc8w34vzh4jk"))))
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
                       ("rust-tauri-winrt-notification" ,rust-tauri-winrt-notification-0.2)
                       ("rust-zbus" ,rust-zbus-4))))
    (home-page "https://github.com/hoodie/notify-rust")
    (synopsis
     "Show desktop notifications (linux, bsd, mac). Pure Rust dbus client and server.")
    (description
     "Show desktop notifications (linux, bsd, mac).  Pure Rust dbus client and server.")
    (license (list license:expat license:asl2.0))))

(define-public rust-nix-0.28
  (package
    (name "rust-nix")
    (version "0.28.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "nix" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1r0rylax4ycx3iqakwjvaa178jrrwiiwghcw95ndzy72zk25c8db"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-cfg-aliases" ,rust-cfg-aliases-0.1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-memoffset" ,rust-memoffset-0.9)
                       ("rust-pin-utils" ,rust-pin-utils-0.1))))
    (home-page "https://github.com/nix-rust/nix")
    (synopsis "Rust friendly bindings to *nix APIs")
    (description "Rust friendly bindings to *nix APIs")
    (license license:expat)))

(define-public rust-value-bag-sval2-1
  (package
    (name "rust-value-bag-sval2")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "value-bag-sval2" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1y7pavswnf2im3a7b4xyr6fvd8b7xsx62ifjm9jhwk0bkp146nr8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-sval" ,rust-sval-2)
                       ("rust-sval-buffer" ,rust-sval-buffer-2)
                       ("rust-sval-dynamic" ,rust-sval-dynamic-2)
                       ("rust-sval-fmt" ,rust-sval-fmt-2)
                       ("rust-sval-json" ,rust-sval-json-2)
                       ("rust-sval-ref" ,rust-sval-ref-2)
                       ("rust-sval-serde" ,rust-sval-serde-2)
                       ("rust-sval-test" ,rust-sval-test-2))))
    (home-page "")
    (synopsis "Implementation detail for value-bag")
    (description "Implementation detail for value-bag")
    (license (list license:asl2.0 license:expat))))

(define-public rust-value-bag-serde1-1
  (package
    (name "rust-value-bag-serde1")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "value-bag-serde1" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0f8x893rl3r3lfap31mmy27q1z1rjkbqkdgpiqkvbk6b84sp0dfc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-erased-serde" ,rust-erased-serde-0.4)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-buf" ,rust-serde-buf-0.1)
                       ("rust-serde-fmt" ,rust-serde-fmt-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-serde-test" ,rust-serde-test-1))))
    (home-page "")
    (synopsis "Implementation detail for value-bag")
    (description "Implementation detail for value-bag")
    (license (list license:asl2.0 license:expat))))

(define-public rust-value-bag-1
  (package
    (name "rust-value-bag")
    (version "1.8.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "value-bag" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1s6yrwh2s4zdjvdx6sy6irffhhffl19yphy71701d1mrqcwp6ybl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-value-bag-serde1" ,rust-value-bag-serde1-1)
                       ("rust-value-bag-sval2" ,rust-value-bag-sval2-1))))
    (home-page "https://github.com/sval-rs/value-bag")
    (synopsis "Anonymous structured values")
    (description "Anonymous structured values")
    (license (list license:asl2.0 license:expat))))

(define-public rust-log-0.4
  (package
    (name "rust-log")
    (version "0.4.21")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "log" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "074hldq1q8rlzq2s2qa8f25hj4s3gpw71w64vdwzjd01a4g8rvch"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-serde" ,rust-serde-1)
                       ("rust-sval" ,rust-sval-2)
                       ("rust-sval-ref" ,rust-sval-ref-2)
                       ("rust-value-bag" ,rust-value-bag-1))))
    (home-page "https://github.com/rust-lang/log")
    (synopsis "A lightweight logging facade for Rust
")
    (description "This package provides a lightweight logging facade for Rust")
    (license (list license:expat license:asl2.0))))

(define-public rust-indexmap-2
  (package
    (name "rust-indexmap")
    (version "2.2.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "indexmap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "09hgwi2ig0wyj5rjziia76zmhgfj95k0jb4ic3iiawm4vlavg3qn"))))
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
    (synopsis "A hash table with consistent order and fast iteration.")
    (description
     "This package provides a hash table with consistent order and fast iteration.")
    (license (list license:asl2.0 license:expat))))

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
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://gitlab.com/Screwtapello/guess_host_triple/")
    (synopsis
     "Guess which Rust-supported platform is running the current code")
    (description
     "Guess which Rust-supported platform is running the current code")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-worktree-state-0.9
  (package
    (name "rust-gix-worktree-state")
    (version "0.9.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-worktree-state" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0px27a5w7hrzh7jzcymgq0rz2y5khz6qgri42ly9aw2dd7qhjn2n"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-index" ,rust-gix-index-0.31)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.32)
                       ("rust-io-close" ,rust-io-close-0.3)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project implementing setting the worktree to a particular state")
    (description
     "This package provides a crate of the gitoxide project implementing setting the
worktree to a particular state")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-submodule-0.10
  (package
    (name "rust-gix-submodule")
    (version "0.10.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-submodule" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1v131krfd5avz321qhqvhjdmp2p4bz1iyk6lxhplfqk3cq2ymdsg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-config" ,rust-gix-config-0.36)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-refspec" ,rust-gix-refspec-0.23)
                       ("rust-gix-url" ,rust-gix-url-0.27)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A crate of the gitoxide project dealing git submodules")
    (description
     "This package provides a crate of the gitoxide project dealing git submodules")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-status-0.8
  (package
    (name "rust-gix-status")
    (version "0.8.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-status" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1wkb0jfn233xj9damdxaqzkji5kglwd8bicyyq4sgv27k6w6s8fa"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-filetime" ,rust-filetime-0.2)
                       ("rust-gix-diff" ,rust-gix-diff-0.42)
                       ("rust-gix-dir" ,rust-gix-dir-0.3)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-index" ,rust-gix-index-0.31)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.32)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project dealing with 'git status'-like functionality")
    (description
     "This package provides a crate of the gitoxide project dealing with git
status'-like functionality")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-revision-0.27
  (package
    (name "rust-gix-revision")
    (version "0.27.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-revision" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1s5i3hi2pbd8fhsf40ym34i1769ri5yldi7vw8v5vgb935p1jd4y"))))
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
     "A crate of the gitoxide project dealing with finding names for revisions and parsing specifications")
    (description
     "This package provides a crate of the gitoxide project dealing with finding names
for revisions and parsing specifications")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-refspec-0.23
  (package
    (name "rust-gix-refspec")
    (version "0.23.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-refspec" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1cl0z2nbid2jxp9l46q67npqx9p9s0akymxlv7j4z99lb234is6x"))))
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
     "A crate of the gitoxide project for parsing and representing refspecs")
    (description
     "This package provides a crate of the gitoxide project for parsing and
representing refspecs")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-packetline-0.17
  (package
    (name "rust-gix-packetline")
    (version "0.17.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-packetline" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "05d5airkhk7pykgs4p1nwvscv62hb106xyjxnvavc0q9vaz8c15p"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-faster-hex" ,rust-faster-hex-0.9)
                       ("rust-futures-io" ,rust-futures-io-0.3)
                       ("rust-futures-lite" ,rust-futures-lite-2)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project implementing the pkt-line serialization format")
    (description
     "This package provides a crate of the gitoxide project implementing the pkt-line
serialization format")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-transport-0.41
  (package
    (name "rust-gix-transport")
    (version "0.41.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-transport" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "17gdw7mmnw9sbqgi2qlb86i41d97fkna9f8l8zj9xbcwxir5z3ng"))))
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
                       ("rust-futures-lite" ,rust-futures-lite-2)
                       ("rust-gix-command" ,rust-gix-command-0.3)
                       ("rust-gix-credentials" ,rust-gix-credentials-0.24)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-packetline" ,rust-gix-packetline-0.17)
                       ("rust-gix-quote" ,rust-gix-quote-0.4)
                       ("rust-gix-sec" ,rust-gix-sec-0.10)
                       ("rust-gix-url" ,rust-gix-url-0.27)
                       ("rust-pin-project-lite" ,rust-pin-project-lite-0.2)
                       ("rust-reqwest" ,rust-reqwest-0.11)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project dedicated to implementing the git transport layer")
    (description
     "This package provides a crate of the gitoxide project dedicated to implementing
the git transport layer")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-protocol-0.44
  (package
    (name "rust-gix-protocol")
    (version "0.44.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-protocol" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "169vnddd4wapba6lpn8w6qw3snwwi25gk0929xpyvn3fjh0cs1d9"))))
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
                       ("rust-gix-transport" ,rust-gix-transport-0.41)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-maybe-async" ,rust-maybe-async-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A crate of the gitoxide project for implementing git protocols")
    (description
     "This package provides a crate of the gitoxide project for implementing git
protocols")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-pack-0.49
  (package
    (name "rust-gix-pack")
    (version "0.49.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-pack" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0c7c2j39vd207fq0a5s1nipmqkhwpdlmr7va6jx4mmha0fmax4b3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-clru" ,rust-clru-0.6)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-chunk" ,rust-gix-chunk-0.4)
                       ("rust-gix-diff" ,rust-gix-diff-0.42)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-13)
                       ("rust-gix-traverse" ,rust-gix-traverse-0.38)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-uluru" ,rust-uluru-3))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Implements git packs and related data structures")
    (description
     "This package implements git packs and related data structures")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-odb-0.59
  (package
    (name "rust-gix-odb")
    (version "0.59.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-odb" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0vhpzakavhcfd7y8k1qxk39fw8b7whfd57bdys036s8rqxw57dc1"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arc-swap" ,rust-arc-swap-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-pack" ,rust-gix-pack-0.49)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-quote" ,rust-gix-quote-0.4)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-tempfile" ,rust-tempfile-3)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Implements various git object databases")
    (description "This package implements various git object databases")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-negotiate-0.13
  (package
    (name "rust-gix-negotiate")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-negotiate" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0plpp9nigj8br2dbhv43gf3630m373595lb7q7gp0s60r3w9ifjl"))))
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
     "A crate of the gitoxide project implementing negotiation algorithms")
    (description
     "This package provides a crate of the gitoxide project implementing negotiation
algorithms")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-mailmap-0.23
  (package
    (name "rust-gix-mailmap")
    (version "0.23.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-mailmap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1ca1kb6psl0cp6ykcx2l0mvrichj6gfmhg810a8gjrcaq232r9i8"))))
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
    (synopsis "A crate of the gitoxide project for parsing mailmap files")
    (description
     "This package provides a crate of the gitoxide project for parsing mailmap files")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-macros-0.1
  (package
    (name "rust-gix-macros")
    (version "0.1.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-macros" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0cj048i0a5xzqbv99514xfvhxwn833yzaclkmc9pfzp62j7l7zqx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-2))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Proc-macro utilities for gix")
    (description "Proc-macro utilities for gix")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-pathspec-0.7
  (package
    (name "rust-gix-pathspec")
    (version "0.7.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-pathspec" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0r8y1aqzz8m7admbvglz161yfq3y8943cvp07bwzs3hy255977za"))))
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
    (synopsis "A crate of the gitoxide project dealing magical pathspecs")
    (description
     "This package provides a crate of the gitoxide project dealing magical pathspecs")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-discover-0.31
  (package
    (name "rust-gix-discover")
    (version "0.31.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-discover" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1cc22hhj3w95jwsl2r6cihys6k65xz03sivyyz510dzdhy8b9fk4"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-dunce" ,rust-dunce-1)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-ref" ,rust-gix-ref-0.43)
                       ("rust-gix-sec" ,rust-gix-sec-0.10)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "Discover git repositories and check if a directory is a git repository")
    (description
     "Discover git repositories and check if a directory is a git repository")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-dir-0.3
  (package
    (name "rust-gix-dir")
    (version "0.3.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-dir" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0ckd5iw7pisd8bvfp7xfmh4pk17483kawy26awbhr41hj79cq4rl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-discover" ,rust-gix-discover-0.31)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                       ("rust-gix-index" ,rust-gix-index-0.31)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.32)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A crate of the gitoxide project dealing with directory walks")
    (description
     "This package provides a crate of the gitoxide project dealing with directory
walks")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-bitmap-0.2
  (package
    (name "rust-gix-bitmap")
    (version "0.2.11")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-bitmap" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1bl7gqqlsdwngvvpgj6cby07cwidf7m0yk6wv473zqflrdkdnwd3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project dedicated implementing the standard git bitmap format")
    (description
     "This package provides a crate of the gitoxide project dedicated implementing the
standard git bitmap format")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-index-0.31
  (package
    (name "rust-gix-index")
    (version "0.31.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-index" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1rnjpxlqcpmvg9lcb0aij67x1w3a4sihcmg4gmd35kww7pqj35jl"))))
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
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-lock" ,rust-gix-lock-13)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-traverse" ,rust-gix-traverse-0.38)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
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
     "A work-in-progress crate of the gitoxide project dedicated implementing the git index file")
    (description
     "This package provides a work-in-progress crate of the gitoxide project dedicated
implementing the git index file")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-ignore-0.11
  (package
    (name "rust-gix-ignore")
    (version "0.11.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-ignore" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1wb33zq9pn9hs4d5abg34hxf8l039aim9xii9p0rz7w2ynsbw3b4"))))
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
    (synopsis "A crate of the gitoxide project dealing .gitignore files")
    (description
     "This package provides a crate of the gitoxide project dealing .gitignore files")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-worktree-0.32
  (package
    (name "rust-gix-worktree")
    (version "0.32.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-worktree" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "174nxz96nxssd241fjzn2nlz0mqwk0x4c1by33mnihgfz4xf0y7y"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                       ("rust-gix-index" ,rust-gix-index-0.31)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project for shared worktree related types and utilities.")
    (description
     "This package provides a crate of the gitoxide project for shared worktree
related types and utilities.")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-diff-0.42
  (package
    (name "rust-gix-diff")
    (version "0.42.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-diff" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1i4sz4hsdpfjcyxhr8xsfb57ribxkj8f1b9lln04kxrf7ichbrkq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-getrandom" ,rust-getrandom-0.2)
                       ("rust-gix-command" ,rust-gix-command-0.3)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-13)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.32)
                       ("rust-imara-diff" ,rust-imara-diff-0.1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Calculate differences between various git objects")
    (description "Calculate differences between various git objects")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-url-0.27
  (package
    (name "rust-gix-url")
    (version "0.27.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-url" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1kyiah4kjqli6swc1frdlys6vpwi6lwysymy6az0y656vkmjkf0d"))))
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
     "A crate of the gitoxide project implementing parsing and serialization of gix-url")
    (description
     "This package provides a crate of the gitoxide project implementing parsing and
serialization of gix-url")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-prompt-0.8
  (package
    (name "rust-gix-prompt")
    (version "0.8.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-prompt" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1n2m39if2wkxdgs3p2w8p5arv822sqaj6p7cbp9fbdg7gjqmwcpm"))))
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
     "A crate of the gitoxide project for handling prompts in the terminal")
    (description
     "This package provides a crate of the gitoxide project for handling prompts in
the terminal")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-credentials-0.24
  (package
    (name "rust-gix-credentials")
    (version "0.24.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-credentials" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "18fsixnzwa0qyd6pywldwkdhl3mas6976g4s68cp2g5xhdhi8w2w"))))
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
     "A crate of the gitoxide project to interact with git credentials helpers")
    (description
     "This package provides a crate of the gitoxide project to interact with git
credentials helpers")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-sec-0.10
  (package
    (name "rust-gix-sec")
    (version "0.10.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-sec" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "18brd8k370ddq19fbq04fkq8ry84b1ar0xz90gfj0fv49ac2gp7x"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A crate of the gitoxide project providing a shared trust model")
    (description
     "This package provides a crate of the gitoxide project providing a shared trust
model")
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

(define-public rust-tempfile-3
  (package
    (name "rust-tempfile")
    (version "3.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tempfile" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1wdzz35ri168jn9al4s1g2rnsrr5ci91khgarc2rvpb3nappzdw5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cfg-if" ,rust-cfg-if-1)
                       ("rust-fastrand" ,rust-fastrand-2)
                       ("rust-rustix" ,rust-rustix-0.38)
                       ("rust-windows-sys" ,rust-windows-sys-0.52))))
    (home-page "https://stebalien.com/projects/tempfile-rs/")
    (synopsis "A library for managing temporary files and directories.")
    (description
     "This package provides a library for managing temporary files and directories.")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-tempfile-13
  (package
    (name "rust-gix-tempfile")
    (version "13.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-tempfile" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "048dd8s7w7ph0rlkig9n70kk7hyy094qx4l5brkkni7ljijxfqd7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-dashmap" ,rust-dashmap-5)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-signal-hook" ,rust-signal-hook-0.3)
                       ("rust-signal-hook-registry" ,rust-signal-hook-registry-1)
                       ("rust-tempfile" ,rust-tempfile-3))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A tempfile implementation with a global registry to assure cleanup")
    (description
     "This package provides a tempfile implementation with a global registry to assure
cleanup")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-lock-13
  (package
    (name "rust-gix-lock")
    (version "13.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-lock" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0jfh6i58rqq624w0cr20gf4a0zlvg0wwp6ricch3bf013zw5khz7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-tempfile" ,rust-gix-tempfile-13)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A git-style lock-file implementation")
    (description "This package provides a git-style lock-file implementation")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-ref-0.43
  (package
    (name "rust-gix-ref")
    (version "0.43.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-ref" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0rbvqwv5prqdi84qkf4xaxj16s7hkabjiwvdbns1q415p5lbljpx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-actor" ,rust-gix-actor-0.31)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-lock" ,rust-gix-lock-13)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-13)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-validate" ,rust-gix-validate-0.8)
                       ("rust-memmap2" ,rust-memmap2-0.9)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A crate to handle git references")
    (description "This package provides a crate to handle git references")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-config-value-0.14
  (package
    (name "rust-gix-config-value")
    (version "0.14.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-config-value" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0158q089kc151h3n0wk43fg4s28v0cjscll2r1w3mcx9n41n5l7v"))))
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
     "A crate of the gitoxide project providing git-config value parsing")
    (description
     "This package provides a crate of the gitoxide project providing git-config value
parsing")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-config-0.36
  (package
    (name "rust-gix-config")
    (version "0.36.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-config" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1rd61kgvdxlvz4d1f5z5zyiydh71jbmsq7jfs1x394z8jrcy103m"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-config-value" ,rust-gix-config-value-0.14)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-ref" ,rust-gix-ref-0.43)
                       ("rust-gix-sec" ,rust-gix-sec-0.10)
                       ("rust-memchr" ,rust-memchr-2)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-unicode-bom" ,rust-unicode-bom-2)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A git-config file parser and editor from the gitoxide project")
    (description
     "This package provides a git-config file parser and editor from the gitoxide
project")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-revwalk-0.13
  (package
    (name "rust-gix-revwalk")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-revwalk" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0z84i12hk5wqprdxrk31rhhk292bd3zw0cx386pflkl1ms9x79z0"))))
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
    (synopsis "A crate providing utilities for walking the revision graph")
    (description
     "This package provides a crate providing utilities for walking the revision graph")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-hashtable-0.5
  (package
    (name "rust-gix-hashtable")
    (version "0.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-hashtable" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0hp2m2rvbv0vav5lkq7d7bvx74qrb6w3hnj1rq3aq69wdzhq1pvx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-hashbrown" ,rust-hashbrown-0.14)
                       ("rust-parking-lot" ,rust-parking-lot-0.12))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate that provides hashtable based data structures optimized to utilize ObjectId keys")
    (description
     "This package provides a crate that provides hashtable based data structures
optimized to utilize @code{ObjectId} keys")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-chunk-0.4
  (package
    (name "rust-gix-chunk")
    (version "0.4.8")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-chunk" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0lhcmzamr5rlcw8h9bvsjqn9dak1mwj3ng2i1djaf6wnd48pbj25"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "Interact with the git chunk file format used in multi-pack index and commit-graph files")
    (description
     "Interact with the git chunk file format used in multi-pack index and
commit-graph files")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-commitgraph-0.24
  (package
    (name "rust-gix-commitgraph")
    (version "0.24.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-commitgraph" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1i0jrf5msqx8ry8z7skj4bxh1ifpfr8knh93i3qlmnl520qh5cgp"))))
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
    (description "Read-only access to the git commitgraph file format")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-traverse-0.38
  (package
    (name "rust-gix-traverse")
    (version "0.38.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-traverse" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1kzhkgddf7jyjmxdirg96a9s21jwh7jb324pl01m80kpqx5ziblm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A crate of the gitoxide project")
    (description "This package provides a crate of the gitoxide project")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-fs-0.10
  (package
    (name "rust-gix-fs")
    (version "0.10.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-fs" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1f1iwqvscsjvsvx23v974kczz27pmj0v9j1ig1kjj1ciwx04q672"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A crate providing file system specific utilities to `gitoxide`")
    (description
     "This package provides a crate providing file system specific utilities to
`gitoxide`")
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
     "A duplicate of `gix-packetline` with the `blocking-io` feature pre-selected")
    (description
     "This package provides a duplicate of `gix-packetline` with the `blocking-io`
feature pre-selected")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-command-0.3
  (package
    (name "rust-gix-command")
    (version "0.3.6")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-command" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0xsbllakppwpn3z5qzyivlqa7q068wry2a7dpr3xxcy41l10j07r"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-shell-words" ,rust-shell-words-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project handling internal git command execution")
    (description
     "This package provides a crate of the gitoxide project handling internal git
command execution")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-filter-0.11
  (package
    (name "rust-gix-filter")
    (version "0.11.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-filter" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "04pgk370hrb2fj8nfanmdblv6jlxnb1ar4fj7pxx5gv2mw0iy3aw"))))
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
    (synopsis "A crate of the gitoxide project implementing git filters")
    (description
     "This package provides a crate of the gitoxide project implementing git filters")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-quote-0.4
  (package
    (name "rust-gix-quote")
    (version "0.4.12")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-quote" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1zyrl6qchw2f6j25ian699ifzas3a5a2zrhflwjpmym3ksdlzzyb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "A crate of the gitoxide project dealing with various quotations used by git")
    (description
     "This package provides a crate of the gitoxide project dealing with various
quotations used by git")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-glob-0.16
  (package
    (name "rust-gix-glob")
    (version "0.16.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-glob" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1dbb2pn659ifmpdiaql8ipyjwn4vhhmdwrn3zknxn01wrd1xqav8"))))
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
    (synopsis "A crate of the gitoxide project dealing with pattern matching")
    (description
     "This package provides a crate of the gitoxide project dealing with pattern
matching")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-attributes-0.22
  (package
    (name "rust-gix-attributes")
    (version "0.22.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-attributes" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1j7cyx9vkffw8ln7dvc9jmx1rgiixia9mx130156l4xc5vs4iyzf"))))
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
    (synopsis "A crate of the gitoxide project dealing .gitattributes files")
    (description
     "This package provides a crate of the gitoxide project dealing .gitattributes
files")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-worktree-stream-0.11
  (package
    (name "rust-gix-worktree-stream")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-worktree-stream" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1fihrlacjvyyh1zi62z4ggb7hbln75vxgyflz2098jw99pra69k3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-gix-attributes" ,rust-gix-attributes-0.22)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-traverse" ,rust-gix-traverse-0.38)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "generate a byte-stream from a git-tree")
    (description "generate a byte-stream from a git-tree")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-path-0.10
  (package
    (name "rust-gix-path")
    (version "0.10.7")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-path" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "10w7abk2wcp0w2y943sdlsic3xc91d6qr29zjinilsbmykq3qqi3"))))
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
     "A crate of the gitoxide project dealing paths and their conversions")
    (description
     "This package provides a crate of the gitoxide project dealing paths and their
conversions")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-validate-0.8
  (package
    (name "rust-gix-validate")
    (version "0.8.4")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-validate" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0i8m4jv53yn8nhp2niifb03p6lcyj1sd8d6x36n5x624c3hcd7z3"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Validation functions for various kinds of names in git")
    (description "Validation functions for various kinds of names in git")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-object-0.42
  (package
    (name "rust-gix-object")
    (version "0.42.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-object" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0lg04riq9gggss7107m1p7clirs84fz2vl4198fdyc10wzx8wkrx"))))
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
     "Immutable and mutable git objects with decoding and encoding support")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-archive-0.11
  (package
    (name "rust-gix-archive")
    (version "0.11.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-archive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1knc5yclpafkgnbxk52wp9pyr7vh9pif7kgynj6a5nn6sfgzxk1j"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-flate2" ,rust-flate2-1)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-worktree-stream" ,rust-gix-worktree-stream-0.11)
                       ("rust-tar" ,rust-tar-0.4)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-zip" ,rust-zip-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "archive generation from of a worktree stream")
    (description "archive generation from of a worktree stream")
    (license (list license:expat license:asl2.0))))

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

(define-public rust-tui-react-0.22
  (package
    (name "rust-tui-react")
    (version "0.22.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "tui-react" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "04b5av7fpg46bz3zbgqxdwkrx42lcfcap1afxhd6qrnlw9rwvyig"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-ratatui" ,rust-ratatui-0.25)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/Byron/tui-crates")
    (synopsis
     "TUI widgets using a react-like paradigm, allowing mutable component state and render properties.")
    (description
     "TUI widgets using a react-like paradigm, allowing mutable component state and
render properties.")
    (license license:expat)))

(define-public rust-wezterm-dynamic-0.1
  (package
    (name "rust-wezterm-dynamic")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wezterm-dynamic" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1al8fmfr852m62mlcr0v2lg3a18icl2sv79zv7jnv9v0rk07hpm7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-ordered-float" ,rust-ordered-float-3)
                       ("rust-strsim" ,rust-strsim-0.10)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wezterm-dynamic-derive" ,rust-wezterm-dynamic-derive-0.1))))
    (home-page "https://github.com/wez/wezterm")
    (synopsis
     "config serialization for wezterm via dynamic json-like data values")
    (description
     "config serialization for wezterm via dynamic json-like data values")
    (license license:expat)))

(define-public rust-deltae-0.3
  (package
    (name "rust-deltae")
    (version "0.3.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "deltae" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1d3hw9hpvicl9x0x34jr2ybjk5g5ym1lhbyz6zj31110gq8zaaap"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://gitlab.com/ryanobeirne/deltae")
    (synopsis "Calculate Delta E between two colors in CIE Lab space.")
    (description "Calculate Delta E between two colors in CIE Lab space.")
    (license license:expat)))

(define-public rust-csscolorparser-0.6
  (package
    (name "rust-csscolorparser")
    (version "0.6.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "csscolorparser" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1gxh11hajx96mf5sd0az6mfsxdryfqvcfcphny3yfbfscqq7sapb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-cint" ,rust-cint-0.3)
                       ("rust-lab" ,rust-lab-0.11)
                       ("rust-phf" ,rust-phf-0.11)
                       ("rust-rgb" ,rust-rgb-0.8)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/mazznoer/csscolorparser-rs")
    (synopsis "CSS color parser library")
    (description "CSS color parser library")
    (license (list license:expat license:asl2.0))))

(define-public rust-wezterm-color-types-0.2
  (package
    (name "rust-wezterm-color-types")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wezterm-color-types" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0xvphmrqgg69v9l879xj5lq010z13f5ixi854ykmny6j7m47lvjc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-csscolorparser" ,rust-csscolorparser-0.6)
                       ("rust-deltae" ,rust-deltae-0.3)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-wezterm-dynamic" ,rust-wezterm-dynamic-0.1))))
    (home-page "https://github.com/wez/wezterm")
    (synopsis "Types for working with colors")
    (description "Types for working with colors")
    (license license:expat)))

(define-public rust-wezterm-dynamic-derive-0.1
  (package
    (name "rust-wezterm-dynamic-derive")
    (version "0.1.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wezterm-dynamic-derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1w07qf8njyq19nxi9vpshwprk00blhzg9ybis2rhfba433rmx7qc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/wez/wezterm")
    (synopsis
     "config serialization for wezterm via dynamic json-like data values")
    (description
     "config serialization for wezterm via dynamic json-like data values")
    (license license:expat)))

(define-public rust-ordered-float-4
  (package
    (name "rust-ordered-float")
    (version "4.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ordered-float" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0kjqcvvbcsibbx3hnj7ag06bd9gv2zfi5ja6rgyh2kbxbh3zfvd7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-borsh" ,rust-borsh-1)
                       ("rust-bytemuck" ,rust-bytemuck-1)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-proptest" ,rust-proptest-1)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rkyv" ,rust-rkyv-0.7)
                       ("rust-schemars" ,rust-schemars-0.8)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-speedy" ,rust-speedy-0.8))))
    (home-page "https://github.com/reem/rust-ordered-float")
    (synopsis "Wrappers for total ordering on floats")
    (description "Wrappers for total ordering on floats")
    (license license:expat)))

(define-public rust-wezterm-dynamic-0.2
  (package
    (name "rust-wezterm-dynamic")
    (version "0.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wezterm-dynamic" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1dbppcd5s509w3b25q2fx2c4c52cwdl61yw1fvh38rx8ryx2icfz"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-ordered-float" ,rust-ordered-float-4)
                       ("rust-strsim" ,rust-strsim-0.10)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-wezterm-dynamic-derive" ,rust-wezterm-dynamic-derive-0.1))))
    (home-page "https://github.com/wez/wezterm")
    (synopsis
     "config serialization for wezterm via dynamic json-like data values")
    (description
     "config serialization for wezterm via dynamic json-like data values")
    (license license:expat)))

(define-public rust-wezterm-bidi-0.2
  (package
    (name "rust-wezterm-bidi")
    (version "0.2.3")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "wezterm-bidi" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1v7kwmnxfplv9kgdmamn6csbn2ag5xjr0y6gs797slk0alsnw2hc"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-log" ,rust-log-0.4)
                       ("rust-wezterm-dynamic" ,rust-wezterm-dynamic-0.2))))
    (home-page "https://github.com/wez/wezterm")
    (synopsis "The Unicode Bidi Algorithm (UBA)")
    (description "The Unicode Bidi Algorithm (UBA)")
    (license (list license:expat ))))

(define-public rust-finl-unicode-1
  (package
    (name "rust-finl-unicode")
    (version "1.2.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "finl_unicode" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1ipdx778849czik798sjbgk5yhwxqybydac18d2g9jb20dxdrkwg"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t))
    (home-page "https://finl.xyz")
    (synopsis
     "Library for handling Unicode functionality for finl (categories and grapheme segmentation)")
    (description
     "Library for handling Unicode functionality for finl (categories and grapheme
segmentation)")
    (license (list license:expat license:asl2.0))))

(define-public rust-termwiz-0.20
  (package
    (name "rust-termwiz")
    (version "0.20.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "termwiz" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1yj80sli95wcw0im2iic9h7mx20hms3f9shxk7jarjqgl5waj2cm"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-anyhow" ,rust-anyhow-1)
                       ("rust-base64" ,rust-base64-0.21)
                       ("rust-bitflags" ,rust-bitflags-1)
                       ("rust-cassowary" ,rust-cassowary-0.3)
                       ("rust-filedescriptor" ,rust-filedescriptor-0.8)
                       ("rust-finl-unicode" ,rust-finl-unicode-1)
                       ("rust-fixedbitset" ,rust-fixedbitset-0.4)
                       ("rust-fnv" ,rust-fnv-1)
                       ("rust-hex" ,rust-hex-0.4)
                       ("rust-image" ,rust-image-0.24)
                       ("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-libc" ,rust-libc-0.2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-memmem" ,rust-memmem-0.1)
                       ("rust-nix" ,rust-nix-0.24)
                       ("rust-num-derive" ,rust-num-derive-0.3)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-ordered-float" ,rust-ordered-float-3)
                       ("rust-pest" ,rust-pest-2)
                       ("rust-pest-derive" ,rust-pest-derive-2)
                       ("rust-phf" ,rust-phf-0.10)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-semver" ,rust-semver-0.11)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-sha2" ,rust-sha2-0.9)
                       ("rust-signal-hook" ,rust-signal-hook-0.1)
                       ("rust-siphasher" ,rust-siphasher-0.3)
                       ("rust-terminfo" ,rust-terminfo-0.7)
                       ("rust-termios" ,rust-termios-0.3)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-ucd-trie" ,rust-ucd-trie-0.1)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-vtparse" ,rust-vtparse-0.6)
                       ("rust-wezterm-bidi" ,rust-wezterm-bidi-0.2)
                       ("rust-wezterm-color-types" ,rust-wezterm-color-types-0.2)
                       ("rust-wezterm-dynamic" ,rust-wezterm-dynamic-0.1)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/wez/wezterm")
    (synopsis "Terminal Wizardry for Unix and Windows")
    (description "Terminal Wizardry for Unix and Windows")
    (license license:expat)))

(define-public rust-stability-0.1
  (package
    (name "rust-stability")
    (version "0.1.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "stability" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1kn3vcicmpg8bnyalp15i2j0dbv6c0wc62022bcs58jdi5vv3lgb"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-quote" ,rust-quote-1)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://github.com/sagebind/stability")
    (synopsis "Rust API stability attributes for the rest of us.")
    (description "Rust API stability attributes for the rest of us.")
    (license license:expat)))

(define-public rust-ratatui-0.25
  (package
    (name "rust-ratatui")
    (version "0.25.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ratatui" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1sw0s4s9y09n2nsxs996frrlmy4fay7ibwfrvar0fvmswi99wrd5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bitflags" ,rust-bitflags-2)
                       ("rust-cassowary" ,rust-cassowary-0.3)
                       ("rust-crossterm" ,rust-crossterm-0.27)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-indoc" ,rust-indoc-2)
                       ("rust-itertools" ,rust-itertools-0.12)
                       ("rust-lru" ,rust-lru-0.12)
                       ("rust-paste" ,rust-paste-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-stability" ,rust-stability-0.1)
                       ("rust-strum" ,rust-strum-0.25)
                       ("rust-termion" ,rust-termion-2)
                       ("rust-termwiz" ,rust-termwiz-0.20)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/ratatui-org/ratatui")
    (synopsis "A library that's all about cooking up terminal user interfaces")
    (description
     "This package provides a library that's all about cooking up terminal user
interfaces")
    (license license:expat)))

(define-public rust-crosstermion-0.13
  (package
    (name "rust-crosstermion")
    (version "0.13.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "crosstermion" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1q877s6rfm4n4amsg79ihxi583lhmlnq57hj9sg1ph2ddyw1a120"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-ansiterm" ,rust-ansiterm-0.12)
                       ("rust-async-channel" ,rust-async-channel-2)
                       ("rust-crossterm" ,rust-crossterm-0.27)
                       ("rust-futures-channel" ,rust-futures-channel-0.3)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-lite" ,rust-futures-lite-2)
                       ("rust-ratatui" ,rust-ratatui-0.25)
                       ("rust-tui-react" ,rust-tui-react-0.22))))
    (home-page "https://github.com/Byron/tui-crates")
    (synopsis "utilities for `crossterm`, without ties to `termion`")
    (description "utilities for `crossterm`, without ties to `termion`")
    (license license:expat)))

(define-public rust-prodash-28
  (package
    (name "rust-prodash")
    (version "28.0.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "prodash" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0y9d16s79168rc5k2djjb16vjcx27yargbfb6xz6m2mq4r6jcjkl"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-io" ,rust-async-io-2)
                       ("rust-bytesize" ,rust-bytesize-1)
                       ("rust-crosstermion" ,rust-crosstermion-0.13)
                       ("rust-ctrlc" ,rust-ctrlc-3)
                       ("rust-dashmap" ,rust-dashmap-5)
                       ("rust-futures-core" ,rust-futures-core-0.3)
                       ("rust-futures-lite" ,rust-futures-lite-2)
                       ("rust-human-format" ,rust-human-format-1)
                       ("rust-humantime" ,rust-humantime-2)
                       ("rust-is-terminal" ,rust-is-terminal-0.4)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-ratatui" ,rust-ratatui-0.25)
                       ("rust-signal-hook" ,rust-signal-hook-0.3)
                       ("rust-time" ,rust-time-0.3)
                       ("rust-tui-react" ,rust-tui-react-0.22)
                       ("rust-unicode-segmentation" ,rust-unicode-segmentation-1)
                       ("rust-unicode-width" ,rust-unicode-width-0.1))))
    (home-page "https://github.com/Byron/prodash")
    (synopsis
     "A dashboard for visualizing progress of asynchronous and possibly blocking tasks")
    (description
     "This package provides a dashboard for visualizing progress of asynchronous and
possibly blocking tasks")
    (license license:expat)))

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
     "A crate with `gitoxide` utilities that don't need feature toggles")
    (description
     "This package provides a crate with `gitoxide` utilities that don't need feature
toggles")
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
     "A crate to provide minimal `tracing` support that can be turned off to zero cost")
    (description
     "This package provides a crate to provide minimal `tracing` support that can be
turned off to zero cost")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-hash-0.14
  (package
    (name "rust-gix-hash")
    (version "0.14.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-hash" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0pjdlxbqxd9lbkccryfw2ghifiq3gz9h8ylliw0va8b16vvpsggr"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-document-features" ,rust-document-features-0.2)
                       ("rust-faster-hex" ,rust-faster-hex-0.9)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis
     "Borrowed and owned git hash digests used to identify git objects")
    (description
     "Borrowed and owned git hash digests used to identify git objects")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-features-0.38
  (package
    (name "rust-gix-features")
    (version "0.38.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-features" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0drbqqn7bxf4zqbnc34zf5ls6ih1flrr79vs6sh4g8i0gl1m8hnv"))))
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
     "A crate to integrate various capabilities using compile-time feature flags")
    (description
     "This package provides a crate to integrate various capabilities using
compile-time feature flags")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-date-0.8
  (package
    (name "rust-gix-date")
    (version "0.8.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-date" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1755v9rxk388x8ypinlmw5qcl2q9qxll3kinppghx1s1985162qq"))))
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
    (synopsis "A crate of the gitoxide project parsing dates the way git does")
    (description
     "This package provides a crate of the gitoxide project parsing dates the way git
does")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-actor-0.31
  (package
    (name "rust-gix-actor")
    (version "0.31.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix-actor" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0ilcn80rsh6gkzjslvx2m1qbgq0w4i2mf6capbl2xbamwjys7hs5"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-bstr" ,rust-bstr-1)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-itoa" ,rust-itoa-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-thiserror" ,rust-thiserror-1)
                       ("rust-winnow" ,rust-winnow-0.6))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "A way to identify git actors")
    (description "This package provides a way to identify git actors")
    (license (list license:expat license:asl2.0))))

(define-public rust-gix-0.61
  (package
    (name "rust-gix")
    (version "0.61.0")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "gix" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1xyqvr0hs4p4i8jl59hx5j2gin4y7k7nx3g9iq2xw05z8jdfbq74"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-async-std" ,rust-async-std-1)
                       ("rust-curl" ,rust-curl-0.4)
                       ("rust-document-features" ,rust-document-features-0.2)
                       ("rust-gix-actor" ,rust-gix-actor-0.31)
                       ("rust-gix-archive" ,rust-gix-archive-0.11)
                       ("rust-gix-attributes" ,rust-gix-attributes-0.22)
                       ("rust-gix-command" ,rust-gix-command-0.3)
                       ("rust-gix-commitgraph" ,rust-gix-commitgraph-0.24)
                       ("rust-gix-config" ,rust-gix-config-0.36)
                       ("rust-gix-credentials" ,rust-gix-credentials-0.24)
                       ("rust-gix-date" ,rust-gix-date-0.8)
                       ("rust-gix-diff" ,rust-gix-diff-0.42)
                       ("rust-gix-dir" ,rust-gix-dir-0.3)
                       ("rust-gix-discover" ,rust-gix-discover-0.31)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-gix-filter" ,rust-gix-filter-0.11)
                       ("rust-gix-fs" ,rust-gix-fs-0.10)
                       ("rust-gix-glob" ,rust-gix-glob-0.16)
                       ("rust-gix-hash" ,rust-gix-hash-0.14)
                       ("rust-gix-hashtable" ,rust-gix-hashtable-0.5)
                       ("rust-gix-ignore" ,rust-gix-ignore-0.11)
                       ("rust-gix-index" ,rust-gix-index-0.31)
                       ("rust-gix-lock" ,rust-gix-lock-13)
                       ("rust-gix-macros" ,rust-gix-macros-0.1)
                       ("rust-gix-mailmap" ,rust-gix-mailmap-0.23)
                       ("rust-gix-negotiate" ,rust-gix-negotiate-0.13)
                       ("rust-gix-object" ,rust-gix-object-0.42)
                       ("rust-gix-odb" ,rust-gix-odb-0.59)
                       ("rust-gix-pack" ,rust-gix-pack-0.49)
                       ("rust-gix-path" ,rust-gix-path-0.10)
                       ("rust-gix-pathspec" ,rust-gix-pathspec-0.7)
                       ("rust-gix-prompt" ,rust-gix-prompt-0.8)
                       ("rust-gix-protocol" ,rust-gix-protocol-0.44)
                       ("rust-gix-ref" ,rust-gix-ref-0.43)
                       ("rust-gix-refspec" ,rust-gix-refspec-0.23)
                       ("rust-gix-revision" ,rust-gix-revision-0.27)
                       ("rust-gix-revwalk" ,rust-gix-revwalk-0.13)
                       ("rust-gix-sec" ,rust-gix-sec-0.10)
                       ("rust-gix-status" ,rust-gix-status-0.8)
                       ("rust-gix-submodule" ,rust-gix-submodule-0.10)
                       ("rust-gix-tempfile" ,rust-gix-tempfile-13)
                       ("rust-gix-trace" ,rust-gix-trace-0.1)
                       ("rust-gix-transport" ,rust-gix-transport-0.41)
                       ("rust-gix-traverse" ,rust-gix-traverse-0.38)
                       ("rust-gix-url" ,rust-gix-url-0.27)
                       ("rust-gix-utils" ,rust-gix-utils-0.1)
                       ("rust-gix-validate" ,rust-gix-validate-0.8)
                       ("rust-gix-worktree" ,rust-gix-worktree-0.32)
                       ("rust-gix-worktree-state" ,rust-gix-worktree-state-0.9)
                       ("rust-gix-worktree-stream" ,rust-gix-worktree-stream-0.11)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-parking-lot" ,rust-parking-lot-0.12)
                       ("rust-prodash" ,rust-prodash-28)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-reqwest" ,rust-reqwest-0.11)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-signal-hook" ,rust-signal-hook-0.3)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-thiserror" ,rust-thiserror-1))))
    (home-page "https://github.com/Byron/gitoxide")
    (synopsis "Interact with git repositories just like git would")
    (description "Interact with git repositories just like git would")
    (license (list license:expat license:asl2.0))))

(define-public rust-schemars-derive-0.6
  (package
    (name "rust-schemars-derive")
    (version "0.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "schemars_derive" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1a9h8bqqqd0i6605gyhz2jw2hi1wq1vfi262qrflkn3pyk75wlrq"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-proc-macro2" ,rust-proc-macro2-1)
                       ("rust-quote" ,rust-quote-1)
                       ("rust-serde-derive-internals" ,rust-serde-derive-internals-0.25)
                       ("rust-syn" ,rust-syn-1))))
    (home-page "https://graham.cool/schemars/")
    (synopsis "Macros for #[derive(JsonSchema)], for use with schemars")
    (description
     "Macros for #[derive(@code{JsonSchema})], for use with schemars")
    (license license:expat)))

(define-public rust-schemars-0.6
  (package
    (name "rust-schemars")
    (version "0.6.5")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "schemars" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1v6acgxkbhaw7fzg4mp09jv231f0mr224my629435wxasrrrfmh7"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arrayvec" ,rust-arrayvec-0.5)
                       ("rust-chrono" ,rust-chrono-0.4)
                       ("rust-either" ,rust-either-1)
                       ("rust-indexmap" ,rust-indexmap-1)
                       ("rust-schemars-derive" ,rust-schemars-derive-0.6)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-smallvec" ,rust-smallvec-1)
                       ("rust-uuid" ,rust-uuid-0.8))))
    (home-page "https://graham.cool/schemars/")
    (synopsis "Generate JSON Schemas from Rust code")
    (description "Generate JSON Schemas from Rust code")
    (license license:expat)))

(define-public rust-ordered-float-2
  (package
    (name "rust-ordered-float")
    (version "2.10.1")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "ordered-float" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "075i108hr95pr7hy4fgxivib5pky3b6b22rywya5qyd2wmkrvwb8"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-arbitrary" ,rust-arbitrary-1)
                       ("rust-num-traits" ,rust-num-traits-0.2)
                       ("rust-proptest" ,rust-proptest-1)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rkyv" ,rust-rkyv-0.7)
                       ("rust-schemars" ,rust-schemars-0.6)
                       ("rust-serde" ,rust-serde-1))))
    (home-page "https://github.com/reem/rust-ordered-float")
    (synopsis "Wrappers for total ordering on floats")
    (description "Wrappers for total ordering on floats")
    (license license:expat)))

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
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "https://github.com/wez/wezterm")
    (synopsis "Terminal Wizardry for Unix and Windows")
    (description "Terminal Wizardry for Unix and Windows")
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
    (description "Search for files in PATH")
    (license license:expat)))

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
     `(#:skip-build? #t
       #:cargo-inputs (("rust-lazy-static" ,rust-lazy-static-1)
                       ("rust-pathsearch" ,rust-pathsearch-0.2)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-shared-library" ,rust-shared-library-0.1)
                       ("rust-termwiz" ,rust-termwiz-0.15)
                       ("rust-winapi" ,rust-winapi-0.3))))
    (home-page "")
    (synopsis "Drop privileges on Windows")
    (description "Drop privileges on Windows")
    (license license:expat)))

(define-public rust-clap-complete-4
  (package
    (name "rust-clap-complete")
    (version "4.5.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "clap_complete" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "0pi7hdjrw853qhqcpi3ky9azh03k6js8jbmhcl0v2f5z4m1m0yfx"))))
    (build-system cargo-build-system)
    (arguments
     `(#:skip-build? #t
       #:cargo-inputs (("rust-clap" ,rust-clap-4)
                       ("rust-clap-lex" ,rust-clap-lex-0.7)
                       ("rust-is-executable" ,rust-is-executable-1)
                       ("rust-pathdiff" ,rust-pathdiff-0.2)
                       ("rust-shlex" ,rust-shlex-1)
                       ("rust-unicode-xid" ,rust-unicode-xid-0.2))))
    (home-page "https://github.com/clap-rs/clap/tree/master/clap_complete")
    (synopsis "Generate shell completion scripts for your clap::Command")
    (description "Generate shell completion scripts for your clap::Command")
    (license (list license:expat license:asl2.0))))

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
                       ("rust-windows-targets" ,rust-windows-targets-0.52))))
    (home-page "https://github.com/chronotope/chrono")
    (synopsis "Date and time library for Rust")
    (description "Date and time library for Rust")
    (license (list license:expat license:asl2.0))))

(define-public starship
  (package
    (name "starship")
    (version "1.18.2")
    (source
     (origin
       (method url-fetch)
       (uri (crate-uri "starship" version))
       (file-name (string-append name "-" version ".tar.gz"))
       (sha256
	(base32 "1g8l61zgcyd452qs3dp9aasq92nlzq6jpa2bnq29wa8ya4n2kmj6"))))
    (build-system cargo-build-system)
    (arguments
     `(#:tests? #f ;tests cant find /bin/sh
       #:cargo-inputs (("rust-chrono" ,rust-chrono-0.4)
                       ("rust-clap" ,rust-clap-4)
                       ("rust-clap-complete" ,rust-clap-complete-4)
                       ("rust-deelevate" ,rust-deelevate-0.2)
                       ("rust-dirs" ,rust-dirs-5)
                       ("rust-dunce" ,rust-dunce-1)
                       ("rust-dunce" ,rust-dunce-1)
                       ("rust-gethostname" ,rust-gethostname-0.4)
                       ("rust-gix" ,rust-gix-0.61)
                       ("rust-gix-features" ,rust-gix-features-0.38)
                       ("rust-guess-host-triple" ,rust-guess-host-triple-0.1)
                       ("rust-home" ,rust-home-0.5)
                       ("rust-indexmap" ,rust-indexmap-2)
                       ("rust-log" ,rust-log-0.4)
                       ("rust-nix" ,rust-nix-0.28)
                       ("rust-notify-rust" ,rust-notify-rust-4)
                       ("rust-nu-ansi-term" ,rust-nu-ansi-term-0.50)
                       ("rust-once-cell" ,rust-once-cell-1)
                       ("rust-open" ,rust-open-5)
                       ("rust-os-info" ,rust-os-info-3)
                       ("rust-path-slash" ,rust-path-slash-0.2)
                       ("rust-pest" ,rust-pest-2)
                       ("rust-pest-derive" ,rust-pest-derive-2)
                       ("rust-process-control" ,rust-process-control-4)
                       ("rust-quick-xml" ,rust-quick-xml-0.31)
                       ("rust-rand" ,rust-rand-0.8)
                       ("rust-rayon" ,rust-rayon-1)
                       ("rust-regex" ,rust-regex-1)
                       ("rust-rust-ini" ,rust-rust-ini-0.21)
                       ("rust-schemars" ,rust-schemars-0.8)
                       ("rust-semver" ,rust-semver-1)
                       ("rust-serde" ,rust-serde-1)
                       ("rust-serde-json" ,rust-serde-json-1)
                       ("rust-sha1" ,rust-sha1-0.10)
                       ("rust-shadow-rs" ,rust-shadow-rs-0.27)
                       ("rust-shadow-rs" ,rust-shadow-rs-0.27)
                       ("rust-shell-words" ,rust-shell-words-1)
                       ("rust-starship-battery" ,rust-starship-battery-0.8)
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
		       ("rust-windows" ,rust-windows-0.54)
                       ("rust-winres" ,rust-winres-0.1)
                       ("rust-yaml-rust2" ,rust-yaml-rust2-0.8))
       #:cargo-development-inputs (("rust-mockall" ,rust-mockall-0.12)
                                   ("rust-tempfile" ,rust-tempfile-3))))
    (native-inputs
     (list pkg-config cmake))
    (inputs
     (list git))
    (home-page "https://starship.rs")
    (synopsis
     "The minimal, blazing-fast, and infinitely customizable prompt for any shell!")
    (description
     "The minimal, blazing-fast, and infinitely customizable prompt for any shell!")
    (license license:isc)))

starship
