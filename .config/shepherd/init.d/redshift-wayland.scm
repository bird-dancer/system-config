(define redshift-wayland
  (make <service>
    #:provides '(redshfit-wayland)
    #:docstring "Run `redshfift-wayland'"
    #:start (make-forkexec-constructor
             '("redshift-wayland"
               "-l 52.52:13.41" ; location
               "-t 3300:1700")) ; color temperature
    #:stop (make-kill-destructor)
    #:respawn? #t))
(register-services redshift-wayland)

(start redshift-wayland)
