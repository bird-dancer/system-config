(define-module (rde-configs users abcdw)
  #:use-module (contrib features javascript)
  #:use-module (gnu home services shepherd)
  #:use-module (gnu home services xdg)
  #:use-module (gnu home services)
  #:use-module (gnu home-services ssh)
  #:use-module (gnu packages)
  #:use-module (gnu services)
  #:use-module (guix channels)
  #:use-module (guix download)
  #:use-module (guix gexp)
  #:use-module (guix inferior)
  #:use-module (guix packages)
  #:use-module (rde features base)
  #:use-module (rde features wm)
  #:use-module (rde features clojure)
  #:use-module (rde features emacs-xyz)
  #:use-module (rde features gnupg)
  #:use-module (gnu packages gnome-xyz)
  #:use-module (rde features irc)
  #:use-module (rde features keyboard)
  #:use-module (rde features mail)
  #:use-module (rde features networking)
  #:use-module (rde features password-utils)
  #:use-module (rde features security-token)
  #:use-module (rde features system)
  #:use-module (rde features xdg)
  #:use-module (rde features markup)
  #:use-module (rde features docker)
  #:use-module (rde features libreoffice)
  #:use-module (rde features virtualization)
  #:use-module (rde features ocaml)
  #:use-module (rde features presets)
  #:use-module (rde features version-control)
  #:use-module (rde features video)
  #:use-module (rde features terminals)
  #:use-module (rde features gtk)
  #:use-module (rde home services gtk)
  #:use-module (rde features sourcehut)
  #:use-module (rde features)
  #:use-module (rde home services emacs)
  #:use-module (rde home services wm)
  #:use-module (rde home services video)
  #:use-module (rde packages aspell)
  #:use-module (gnu packages hunspell)
  #:use-module (rde packages)
  #:use-module (srfi srfi-1))


;;; Helpers

(define* (mail-acc id user #:optional (type 'gmail))
  "Make a simple mail-account with gmail type by default."
  (mail-account
   (id   id)
   (fqda user)
   (type type)))

(define* (mail-lst id fqda urls)
  "Make a simple mailing-list."
  (mailing-list
   (id   id)
   (fqda fqda)
   (config (l2md-repo
            (name (symbol->string id))
            (urls urls)))))


;;; Service extensions

(define emacs-extra-packages-service
  (simple-service
   'emacs-extra-packages
   home-emacs-service-type
   (home-emacs-extension
    (init-el
     `((with-eval-after-load 'piem
         (setq piem-inboxes
               '(("guix-devel"
                  :url "https://yhetil.org/guile-devel/"
                  :address "guile-devel@gnu.org"
                  :coderepo "~/work/gnu/guile/")
                 ("guix-patches"
                  :url "https://yhetil.org/guix-patches/"
                  :address "guix-patches@gnu.org"
                  :coderepo "~/work/gnu/guix/")
                 ("rde-devel"
                  :url "https://lists.sr.ht/~abcdw/rde-devel"
                  :address "~abcdw/rde-devel@lists.sr.ht"
                  :coderepo "~/work/abcdw/rde/"))))
       (with-eval-after-load 'org
         (setq org-use-speed-commands t)
         (setq org-log-reschedule 'time)
         (define-key org-mode-map (kbd "M-o")
           (lambda ()
             (interactive)
             (org-end-of-meta-data t))))
       (with-eval-after-load 'geiser-mode
         (setq geiser-mode-auto-p nil)
         (defun abcdw-geiser-connect ()
           (interactive)
           (geiser-connect 'guile "localhost" "37146"))

         (define-key geiser-mode-map (kbd "C-c M-j") 'abcdw-geiser-connect))
       (with-eval-after-load 'simple
         (setq-default display-fill-column-indicator-column 80)
         (add-hook 'prog-mode-hook 'display-fill-column-indicator-mode))
       (setq copyright-names-regexp
             (format "%s <%s>" user-full-name user-mail-address))
       (add-hook 'after-save-hook (lambda () (copyright-update nil nil)))))
    (elisp-packages
     (append
      (list
       ;; (@ (rde packages emacs-xyz) emacs-corfu-candidate-overlay)
       )
      (strings->packages
       ;; "emacs-dirvish"
       "emacs-elixir-mode"
       "emacs-company-posframe"
       "emacs-eat"
       "emacs-wgrep"
       "emacs-piem"
       "emacs-geiser"
       "emacs-ox-haunt"
       "emacs-org-wild-notifier"
       "emacs-haskell-mode"
       "emacs-rainbow-mode"
       "emacs-hl-todo"
       "emacs-yasnippet"
       ;; "emacs-consult-dir"
       "emacs-kind-icon"
       "emacs-nginx-mode" "emacs-yaml-mode"
       "emacs-arei"
       "emacs-multitran"
       "emacs-minimap"
       "emacs-ement"
       "emacs-restart-emacs"
       "emacs-org-present"))))))

(define home-extra-packages-service
  (simple-service
   'home-profile-extra-packages
   home-profile-service-type
   (append
    (list
     (@ (gnu packages tree-sitter) tree-sitter-clojure)
     (@ (gnu packages tree-sitter) tree-sitter-html)
     (@ (gnu packages guile) guile-next))
    (strings->packages
     "figlet" ;; TODO: Move to emacs-artist-mode
                                        ;"calibre"
     "librewolf"

     "libnotify"
                                        ;"utox" "qtox"
     ;; "jami"

     "alsa-utils" "cozy"
     "pavucontrol" "wev"
     "imagemagick"
     "obs" "obs-wlrobs"
     "recutils" "binutils" "make" "gdb"

     "hicolor-icon-theme" "adwaita-icon-theme" "gnome-themes-extra" "yaru-theme"
     ;; "papirus-icon-theme" ; 85k files
     "arc-theme"
     "thunar" "fd"
     ;; "glib:bin"

     "ffmpeg"
     "ripgrep" "curl"))))

(define (wallpaper url hash)
  (origin
    (method url-fetch)
    (uri url)
    (file-name "wallpaper.png")
    (sha256 (base32 hash))))

(define wallpaper
  (wallpaper "https://images.unsplash.com/photo-1542396601-dca920ea2807?ixlib=rb-4.0.3&q=85&fm=jpg&crop=entropy&cs=srgb&dl=michael-d-rnKqWvO80Y4-unsplash.jpg"
             "036m0vycilmk8jz2qg26bpbbhabfvy2r366gjka6hzrgbwdz5qmw"))

(define sway-extra-config-service
  (simple-service
   'sway-extra-config
   home-sway-service-type
   `((output DP-2 scale 2)
     (output * bg ,wallpaper center)
     ;; (output eDP-1 disable)
     ,@(map (lambda (x) `(workspace ,x output DP-2)) (iota 8 1))
     (bindsym
      --locked $mod+Shift+t exec
      ,(file-append (@ (gnu packages music) playerctl) "/bin/playerctl")
      play-pause)

     (bindsym
      --locked $mod+Shift+n exec
      ,(file-append (@ (gnu packages music) playerctl) "/bin/playerctl")
      next)

     (bindsym $mod+Shift+o move workspace to output left)
     (bindsym $mod+Ctrl+o focus output left)
     (input type:touchpad
            ;; TODO: Move it to feature-sway or feature-mouse?
            ((natural_scroll enabled)
             (tap enabled)))

     ;; (xwayland disable)
     (bindsym $mod+Shift+Return exec emacs))))

(define mpv-add-user-settings-service
(simple-service
 'mpv-add-user-settings
 home-mpv-service-type
 (home-mpv-extension
  (mpv-conf
   `((global
      ((keep-open . yes)
       (ytdl-format . "bestvideo[height<=?720][fps<=?30][vcodec!=?vp9]+bestaudio/best")
       (save-position-on-quit . yes)
       (speed . 1.61))))))))

(define ssh-extra-config-service
(simple-service
 'ssh-extra-config
 home-ssh-service-type
 (home-ssh-extension
  (extra-config
   (append
    ;; TODO: Move it feature-qemu?
    (map (lambda (id)
           (ssh-host
            (host (format #f "qemu~a" id))
            (options
             `((host-name . "localhost")
               (port . ,(+ 10020 id))))))
         (iota 4))
    (list
     (ssh-host
      (host "pinky")
      (options
       '((host-name . "23.137.249.202")
         (port . 50621)
         (compression . #t)))))))
  (toplevel-options
   '((host-key-algorithms . "+ssh-rsa")
     (pubkey-accepted-key-types . "+ssh-rsa"))))))

(define (feature-additional-services)
  (feature-custom-services
   #:feature-name-prefix 'abcdw
   #:home-services
   (list
    emacs-extra-packages-service
    home-extra-packages-service
    sway-extra-config-service
    ssh-extra-config-service
    mpv-add-user-settings-service)))

;;; User-specific features with personal preferences

;; Initial user's password hash will be available in store, so use this
;; feature with care (display (crypt "hi" "$6$abc"))

(define dev-features
  (list
   (feature-markdown)))

(define virtualization-features
  (list
   (feature-docker)
   (feature-qemu)))

(define general-features
  (append
   rde-base
   rde-desktop
   rde-mail
   rde-cli
   rde-emacs))

(define %all-features
  (append
   virtualization-features
   dev-features
   general-features))

;; In fact, kernel customization fits hosts/ submodule better, but it's ok to
;; have it here for demonstration purpose.
                                        ;(define example-firmware (@ (gnu packages firmware) ath9k-htc-firmware))

;; To override default features obtained from (rde presets) just remove them
;; from the list and add them back with customizations needed.
(define all-features-with-custom-kernel-and-substitutes
  (append
   ;; "C-h S" (info-lookup-symbol), "C-c C-d C-i" (geiser-doc-look-up-manual)
   ;; to see the info manual for a particular function.

   ;; Here we basically remove all the features which has feature name equal
   ;; to either 'base-services or 'kernel.
   (remove (lambda (f)
             (member
              (feature-name f)
              '(base-services
                kernel
                swaylock
                git)))
           %all-features)
   (list
    (feature-git)
    (feature-swaylock)
    (feature-gtk3
     #:gtk-dark-theme? #t
     #:gtk-theme (make-theme "Yaru" yaru-theme)
     #:icon-theme (make-theme "Yaru" yaru-theme)
     #:cursor-theme
     (make-theme "Yaru" yaru-theme) ;; TODO: switch to adwaita cursors
     )
    (feature-base-services
     #:default-substitute-urls (list "https://bordeaux.guix.gnu.org"
                                     "https://ci.guix.gnu.org")))))

(define-public %abcdw-features
  (append
   all-features-with-custom-kernel-and-substitutes
   (list
    (feature-additional-services)
    (feature-user-info
     #:user-name "abcdw"
     #:full-name "Felix Dumbeck"
     #:email "felix.dumbeck@campus.tu-berlin.de"
     #:user-initial-password-hash
     "$6$abc$3SAZZQGdvQgAscM2gupP1tC.SqnsaLSPoAnEOb2k6jXMhzQqS1kCSplAJ/vUy2rrnpHtt6frW2Ap5l/tIvDsz."
     ;; (crypt "bob" "$6$abc")

     #:emacs-advanced-user? #f)
    (feature-gnupg
     #:gpg-primary-key "74830A276C328EC2"
     #:ssh-keys '(("58AAE5966479124A357F7D6B9D710EBA1C24E10E")))
    (feature-security-token)
    (feature-password-store
     #:password-store-directory "/data/abcdw/password-store"
     #:remote-password-store-url "ssh://abcdw@olorin.lan/~/state/password-store")

    (feature-mail-settings
     #:mail-directory-fn (const "/data/abcdw/mail")
     #:mail-accounts (list
                      (mail-account
                       (id 'work)
                       (type 'migadu)
                       (fqda "andrew@trop.in")
                       (aliases '("admin@trop.in" "postmaster@trop.in"))
                       (pass-cmd "pass show mail/work"))
                      (mail-account
                       (id 'personal)
                       (type 'migadu)
                       (fqda "mail@trop.in")
                       (pass-cmd "pass show mail/personal")))
     #:mailing-lists (list (mail-lst 'guile-devel "guile-devel@gnu.org"
                                     '("https://yhetil.org/guile-devel/0"))
                           (mail-lst 'guix-devel "guix-devel@gnu.org"
                                     '("https://yhetil.org/guix-devel/0"))
                           (mail-lst 'guix-bugs "guix-bugs@gnu.org"
                                     '("https://yhetil.org/guix-bugs/0"))
                           (mail-lst 'guix-patches "guix-patches@gnu.org"
                                     '("https://yhetil.org/guix-patches/1"))))

    (feature-irc-settings
     #:irc-accounts (list
                     (irc-account
                      (id 'srht)
                      (network "chat.sr.ht")
                      (bouncer? #t)
                      (nick "abcdw"))
                     (irc-account
                      (id 'libera)
                      (network "irc.libera.chat")
                      (nick "abcdw"))
                     (irc-account
                      (id 'oftc)
                      (network "irc.oftc.net")
                      (nick "abcdw"))))

    (feature-xdg
     #:xdg-user-directories-configuration
     (home-xdg-user-directories-configuration
      (music "$HOME/music")
      (videos "$HOME/vids")
      (pictures "$HOME/pics")
      (documents "$HOME/docs")
      (download "$HOME/dl")
      (desktop "$HOME")
      (publicshare "$HOME")
      (templates "$HOME")))

    (feature-foot)

    (feature-emacs-keycast #:turn-on? #t)

    (feature-emacs-tempel
     #:default-templates? #t
     #:templates
     `(fundamental-mode
       ,#~""
       (t (format-time-string "%Y-%m-%d"))
       (todo
        (if (derived-mode-p 'lisp-data-mode 'clojure-mode 'scheme-mode)
            ";;"
            comment-start)
        (if (string-suffix-p " " comment-start) "" " ")
        "TODO"  ": [" user-full-name ", "
        (format-time-string "%Y-%m-%d") "] ")
       ;; TODO: Move to feature-guix
       ;; ,((@ (rde gexp) slurp-file-like)
       ;;   (file-append ((@ (guix packages) package-source)
       ;;                 (@ (gnu packages package-management) guix))
       ;;                "/etc/snippets/tempel/text-mode"))
       ))
    (feature-emacs-time)
    (feature-emacs-spelling
     #:spelling-program (@ (gnu packages hunspell) hunspell)
     #:spelling-dictionaries
     (list
      (@ (gnu packages hunspell) hunspell-dict-en)
                                        ;(@ (rde packages aspell) hunspell-dict-de)
      ))
    (feature-emacs-git
     #:project-directory "/data/abcdw/work")
    ;; https://plaindrops.de/blog/2020/GTDorgmode/
    ;; https://www.labri.fr/perso/nrougier/GTD/index.html#org2d62325
    (feature-emacs-org
     #:org-directory "/data/abcdw/work/abcdw/private"
     #:org-indent? #f
     #:org-capture-templates
     ;; https://libreddit.tiekoetter.com/r/orgmode/comments/gc76l3/org_capture_inside_notmuch/
     `(("r" "Reply" entry (file+headline "" "Tasks")
        "* TODO %:subject %?\nSCHEDULED: %t\n%U\n%a\n"
        :immediate-finish t)
       ("t" "Todo" entry (file+headline "" "Tasks") ;; org-default-notes-file
        "* TODO %?\nSCHEDULED: %t\n%a\n")
       ("p" "PhD Todo" entry
        (file+headline "/data/abcdw/work/abcdw/private/phd.org" "Tasks")
        "* TODO %?\nSCHEDULED: %t\n%a\n")))
    (feature-emacs-org-roam
     ;; TODO: Rewrite to states
     #:org-roam-directory "/data/abcdw/work/abcdw/notes/notes")
    (feature-emacs-org-dailies
     #:encrypted? #t)

    (feature-emacs-org-agenda
     ;; Add efforts to agenda, it's a bit space hungry, so not included in
     ;; feature by default yet.
     #:org-agenda-prefix-format
     '((agenda . " %i %-12:c%?-12t%-6e% s")
       (todo . " %i %-12:c %-6e")
       (tags . " %i %-12:c")
       (search . " %i %-12:c"))
     #:org-agenda-files '("/data/abcdw/work/abcdw/private/todo.org"
                          "/data/abcdw/work/abcdw/private/phd.org"
                          "/data/abcdw/work/abcdw/rde/TODO"))
    (feature-emacs-elfeed
     #:elfeed-org-files '("/data/abcdw/work/abcdw/private/rss.org"))

    (feature-javascript)
    (feature-ocaml #:opam? #t)

    ;; TODO: move feature to general, move extra configuration to service.
    (feature-notmuch
     #:extra-tag-updates-post
     '("notmuch tag +guix-home +inbox -- 'thread:\"\
{((subject:guix and subject:home) or (subject:service and subject:home) or \
subject:/home:/) and tag:new}\"'"
       "notmuch tag +rde +list -- 'to:.*rde.*@lists.sr.ht and tag:new}'")
     #:notmuch-saved-searches
     (append
      ;; TODO: [Andrew Tropin, 2024-01-07] Archive replied emails automatically
      '((:name "To Process"
         :query "tag:todo or (tag:inbox and not tag:unread and not tag:replied)"
         :key "t")
        (:name "Drafts" :query "tag:draft" :key "d")
        (:name "Watching" :query "thread:{tag:watch} and tag:unread" :key "w")
        (:name "Work Inbox"
         :query "tag:work and tag:inbox"
         :key "W")
        (:name "Personal Inbox"
         :query "tag:personal and tag:inbox"
         :key "P")
        (:name "Guix Home Inbox" :key "H" :query "tag:guix-home and tag:unread"))
      ;; %rde-notmuch-saved-searches
      '()))

    ;; (feature-sourcehut
    ;;  #:user-name-fn (const "abcdw"))
    ;; (feature-yt-dlp)o

                                        ;(feature-libreoffice)

    ;; TODO: Remove auctex dependency, which interjects in texinfo-mode.
    (feature-emacs-citation
     #:global-bibliography
     (list "/data/abcdw/work/abcdw/notes/bibliography.bib"))

    (feature-keyboard
     ;; To get all available options, layouts and variants run:
     ;; cat `guix build xkeyboard-config`/share/X11/xkb/rules/evdev.lst
     #:keyboard-layout
     (keyboard-layout
      "us"
      #:options '("grp:shifts_toggle" "ctrl:nocaps"))))))


(rde-config-home-environment (rde-config
                              (features
                               (append
                                %abcdw-features))))
