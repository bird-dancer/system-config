;; (define-module (complete-alias)
;;   #:use-module (guix)
;;   #:use-module ((guix licenses) #:prefix license:)
;;   #:use-module (gnu packages)
;;   #:use-module (gnu packages bash)
;;   #:use-module (guix build-system gnu)
;;   #:use-module (guix build-system trivial)
;;   )

;; (define-public complete-alias
;;   (package
;;     (name "complete-alias")
;;     (version "1.18.0")
;;     (source (origin
;;               (method url-fetch)
;;               (uri (string-append
;;                     "https://github.com/cykerway/complete-alias/archive/refs/tags/" version ".tar.gz"))
;;               (sha256
;;                (base32
;;                 "0ibljb5wm4r4f9hr18x833isjadasvpgw2i8jxfl2l4nfb18ajy3"))))

;;     (build-system trivial-build-system)
;;     ;(arguments)

;;     (inputs (list bash-completion))
;;     (synopsis "automagical shell alias completion")
;;     (description
;;      "automagical shell alias completion;
;;     works with all common aliases, even self-aliases;
;;     one completion function, for all aliases;
;;     alias completion as easy as type-and-tab;")
;;     (home-page "https://repo.cykerway.com/complete-alias")
;;     (license license:gpl3+)))

(define-module (complete-alias)
  #:use-module (guix)
  #:use-module ((guix licenses) #:prefix license:)
  #:use-module (gnu packages)
  #:use-module (gnu packages bash)
  #:use-module (guix build-system gnu)
  #:use-module (guix build-system trivial))

(define-public complete-alias
  (package
    (name "complete-alias")
    (version "1.18.0")
    (source (origin
              (method url-fetch)
              (uri (string-append                  "https://github.com/cykerway/complete-alias/archive/refs/tags/" version ".tar.gz"))
              (sha256
               (base32                "0ibljb5wm4r4f9hr18x833isjadasvpgw2i8jxfl2l4nfb18ajy3"))))
    (build-system trivial-build-system)
     (arguments
     `(#:modules ((guix build utils))
       #:builder
       (begin
         (use-modules (guix build utils))
         (mkdir-p #$output)
         (copy-recursively "." #$output)
         #t)))
    (home-page "https://github.com/username/complete-alias")
    (synopsis "Bash completion for aliases")
    (description "Complete Alias provides Bash completion for aliases.")
    (license license:expat)))
