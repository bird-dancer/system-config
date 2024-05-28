(use-modules (guix scripts environment))

(define fccache
  (make <service>
    #:provides '(fccache)
    #:docstring "Run 'fc-cache -frv'"
    #:start (lambda () ; Don't run immediately when registered!
              (guix-environment "--ad-hoc" "fontconfig" "--" "fc-cache" "-frv"))
    #:one-shot? #t))

(register-services fccache)
