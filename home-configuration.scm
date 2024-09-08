;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(use-modules
 (gnu home)
 (gnu packages)
 (gnu packages gnome)
 (gnu packages glib)
 (gnu services)
 (guix gexp)
 (guix config)
 (gnu home services)
 (gnu home services desktop)
 (gnu home services ssh)
 (gnu home services shepherd)
 (gnu home services syncthing)
 (gnu home services shells)
 (srfi srfi-1))

(home-environment
 ;; Below is the list of packages that will show up in your
 ;; Home profile, under ~/.guix-home/profile.
 (packages
  (specifications->packages
   (list
    "gcc-toolchain" "make" "cmake" "glib:bin" "glibc"
    "signal-desktop"
    "password-store"
    ;; "emacs-password-store"
    ;; "flatpak"
    "librewolf"
    ;; "emacs-next"
    "emacs"
    "enchant" "hunspell-dict-en"
    ;; "emacs-jinx" "emacs-pdf-tools"
    "ripgrep"
    "redshift-wayland"
    "stow"
    "htop" "powertop"
    "nomacs" "mpv" ;; "clementine"
    "syncthing"
    "unzip"
    "isync"
    "git" "git:send-email"
    ;; dev
    "go" "gopls"
    ;; "rust-cargo" "rust-analyzer" "rust"
    "rust" "rust:cargo" "rust:tools" "rust:out" "rust:rust-src"
    "file"
    "password-store" "gnupg" "pinentry-tty"

    "network-manager-openconnect"
    ;; "openconnect-sso"
    "network-manager-openvpn"
    ;; "emacs-pinentry"
    ;; "cryptsetup"
    ;; "icedove-wayland"
    "neofetch" ;; "starship"
    "font-awesome"
    "hicolor-icon-theme"
    ;; "font-comic-shanns-mono"
    )))
 ;; Below is the list of Home services.  To search for available
 ;; services, run 'guix home search KEYWORD' in a terminal.
 (services
  (list
   (service home-dbus-service-type)
   
   ;; TODO doesnt work with wayland
   ;; (service home-redshift-service-type
   ;;          (home-redshift-configuration
   ;;           (location-provider 'manual)
   ;;           (latitude 52.52)
   ;;           (longitude 13.41)
   ;; 	     (daytime-temperature 3300)
   ;; 	     (nighttime-temperature 1700)))
   
   (service home-shepherd-service-type
	    (home-shepherd-configuration
	     (services
	      (list
	       (shepherd-service
		(provision
		 '(nm-applet-service))
		(requirement '(dbus sway-service))
		(stop  #~(make-kill-destructor))
		(start #~(make-forkexec-constructor
			  '("env" "WAYLAND_DISPLAY=wayland-1" "nm-applet" "--sm-disable" "--no-agent")
			  #:log-file (string-append
				      (getenv "XDG_STATE_HOME") "/log"
				      "/nm-applet.log")))
		(respawn? #f))

	       (shepherd-service
		(provision '(redshift-wayland))
		(requirement '(sway-service))
		(stop  #~(make-kill-destructor))
		(start #~(make-forkexec-constructor
			  '("env" "WAYLAND_DISPLAY=wayland-1" "redshift" "-l" "52.52:13.41" "-t" "3300:1700")
			  #:log-file (string-append
				      (getenv "XDG_STATE_HOME") "/log"
				      "/redshift.log"))) ;~/.local/state/log/
		(respawn? #t))
	       
	       (shepherd-service
		(provision
		 '(sway-service))
		(documentation "Start sway on login.")
		(start #~(make-forkexec-constructor
			  '("sway")
			  #:log-file (string-append
				      (getenv "XDG_STATE_HOME") "/log"
				      "/sway.log")))
		(stop #~(make-kill-destructor))
		(respawn? #f))))))
   
   (service home-syncthing-service-type
	    (for-home
	     (syncthing-configuration
	      (user "felix")
	      (logflags 2))))

   (service home-ssh-agent-service-type)
   
   (simple-service 'env-vars home-environment-variables-service-type
		   `(
		     ;; ("LIBRARY_PATH" . "/home/felix/.guix-home/profile/lib/")
		     ;; ("LD_LIBRARY_PATH" . "/home/felix/.guix-home/profile/lib/")
		     ;; ("CFLAGS" . "/home/felix/.guix-home/profile/lib/")
		     ;; ("LDFLAGS" . "/home/felix/.guix-home/profile/lib/")
		     ("EDITOR" . "/home/felix/.guix-home/profile/bin/emacs")
		     ("MOZ_ENABLE_WAYLAND" . "1")
		     ("MOZ_WEBRENDER" . "1")
		     ))
   
   (service home-bash-service-type
	    (home-bash-configuration
	     ;; (text-config
	     ;;  '("export GCM_CREDENTIAL_STORE=gpg"))
	     (aliases
	      '(("b" . "cd ..")
		("build" . "rm -rf build && cmake -B build -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 && make -C")
		("celar" . "clear")
		("clea" . "clear")
		("cleanup" . "sudo guix system delete-generations && guix home delete-generations && guix package -d && guix gc --delete-generations")
		("upgrade" . "guix pull && sudo guix system reconfigure /etc/config.scm && guix home reconfigure ~/system-config/home-configuration.scm")
		;; ("gfull" . "guix pull && sudo guix system reconfigure /etc/config.scm && guix home reconfigure ~/system-config/home-configuration.scm && sudo guix system delete-generations && guix home delete-generations && guix package -d && guix gc")
		("cleat" . "clear")
		("comp" . "gcc -std=c23 -Wall -Wextra -fstack-protector -g3 -lm")
		("em" . "emacs -nw")
		("grep" . "grep --color=auto")
		("la" . "ls -AF --color=auto")
		("lcear" . "clear")
		("ll" . "ls -lAghF --color=auto")
		("ls" . "ls -F --color=auto")))
	     (bashrc
	      (list
	       (local-file
                "/home/felix/.dotfiles/.bashrc"
                "bashrc")))
	     (bash-profile
	      (list
	       (local-file
                "/home/felix/.dotfiles/.bash_profile"
                "bash_profile"))))))))
