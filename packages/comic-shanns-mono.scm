(define-module (comic-shanns-mono)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (guix build-system font))

(define-public font-comic-shanns-mono
  (package
   (name "font-comic-shanns-mono")
   (version "1.3.0")
   (source
    (origin
     (method url-fetch)
     (uri (string-append "https://github.com/jesusmgg/comic-shanns-mono/releases/download/v" version "/comic-shanns-mono-v" version ".zip"))
     (file-name (string-append name "-" version ".zip"))
     (sha256 (base32 "0q14b1m85z24jpy4pcmzk14rk629jynkyfmhq90pvawggfpapj1w"))))
   (build-system font-build-system)
   (home-page "https://dtinth.github.io/comic-mono-font/")
   (synopsis "A legible monospace font... the very typeface you’ve been trained to recognize since childhood")
   (description "Are you the kind of person that uses Comic Sans in presentations? Do you lie awake every night dreaming about a world where you could write your code in Comic Sans where it looks just as beautiful as on your dear presentations? Wait no more! I present to you Comic Shanns! The Comic Sans inspired monospaced font that's coming to a terminal or editor near you!")
   (license license:expat)))

font-comic-shanns-mono
