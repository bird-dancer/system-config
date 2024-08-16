(define-module (font-comic-mono)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (guix build-system font))

(define-public font-comic-mono
  (package
   (name "font-comic-mono")
   (version "1")
   (source
    (origin
     (method url-fetch)
     (uri "https://dtinth.github.io/comic-mono-font/ComicMono.ttf")
     (sha256 (base32 "15kispdga5bxw0r89sfwq2s3k116s3jgyzknxkqan5iaj9g45h9v"))))
   (build-system font-build-system)
   (arguments (list #:configure-flags #~(list "--enable-silent-rules")
                    #:test-target "check"
                    #:tests? #t))
   (home-page "https://dtinth.github.io/comic-mono-font/")
   (synopsis " A legible monospace font... the very typeface you’ve been trained to recognize since childhood (Regular version)")
   (description "A legible monospace font… the very typeface you’ve been trained to recognize since childhood. This font is a fork of Shannon Miwa’s Comic Shanns (version 1).")
   (license license:expat)))


(define-public font-comic-mono-bold
  (package
   (name "font-comic-mono-bold")
   (version "1")
   (source
    (origin
     (method url-fetch)
     (uri "https://dtinth.github.io/comic-mono-font/ComicMono-bold.ttf")
     (sha256 (base32 "0zhfwvbiz7hhkqj7fs6c2nd33cpvn9zn5phfm8n23xf7vmlxm5i3"))))
   (build-system font-build-system)
   (arguments (list #:configure-flags #~(list "--enable-silent-rules")
                    #:test-target "check"
                    #:tests? #t))
   (home-page "https://dtinth.github.io/comic-mono-font/")
   (synopsis " A legible monospace font... the very typeface you’ve been trained to recognize since childhood (Bold version)")
   (description "A legible monospace font… the very typeface you’ve been trained to recognize since childhood. This font is a fork of Shannon Miwa’s Comic Shanns (version 1).")
   (license license:expat)))

;; This allows you to run guix shell -f guix-packager.scm.
;; Remove this line if you just want to define a package.
font-comic-mono
;font-comic-mono-bold
