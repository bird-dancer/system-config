;; This "home-environment" file can be passed to 'guix home reconfigure'
;; to reproduce the content of your profile.  This is "symbolic": it only
;; specifies package names.  To reproduce the exact same profile, you also
;; need to capture the channels being used, as returned by "guix describe".
;; See the "Replicating Guix" section in the manual.

(use-modules (gnu home)
             (gnu packages)
	     (gnu packages glib)
             (gnu services)
             (guix gexp)
	     (gnu home services)
	     (gnu home services desktop)
	     (gnu home services shepherd)
	     (gnu home services syncthing)
             (gnu home services shells)
	     (rde features base)
	     (rde features irc)
	     (rde features keyboard)
	     (rde features presets)
	     (rde features terminals)
	     (rde features version-control)
	     (rde features)
	     (rde home services wm)
	     (rde packages)
	     (srfi srfi-1))

(home-environment
 ;; Below is the list of packages that will show up in your
 ;; Home profile, under ~/.guix-home/profile.
 (packages (specifications->packages (list
				      "gcc-toolchain" "make"
					;"cmake"
					;"clementine"
                                      "signal-desktop"
					;"flatpak"
                                      "librewolf"
                                      "emacs"
					;"emacs-pdf-tools"
				      "redshift-wayland"
                                      "glib:bin"
                                      "foot"
				      "enchant" "hunspell-dict-en"
				      "stow"
                                      "htop"
                                      "neofetch"
                                      "ripgrep"
				      "nomacs" "mpv"
					;"emacs-jinx"
				      "syncthing"
					;"unzip"
				      "openssh-sans-x"
                                      "git" "git:send-email"
				      "waybar"
					;"cryptsetup"
					;"file"
					;"icedove-wayland"
					;"starship"
					;"font-comic-shanns-mono"
				      )))
 
 ;; Below is the list of Home services.  To search for available
 ;; services, run 'guix home search KEYWORD' in a terminal.
 (services
  (list
   (service home-dbus-service-type)
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
		(provision '(sway))
		(documentation "Start sway on login.")
		(start #~(make-forkexec-constructor '("sway")))
		(stop #~(make-kill-destructor))
		(respawn? #f))))))

   (service home-syncthing-service-type
	    (for-home
	     (syncthing-configuration
	      (user "felix")
	      (logflags 2))))
   
   (service home-bash-service-type
            (home-bash-configuration
             (aliases '(("b" . "cd ..")
                        ("build" . "rm -rf build && cmake -B build -DCMAKE_BUILD_TYPE=Debug -DCMAKE_EXPORT_COMPILE_COMMANDS=1 && make -C")
                        ("celar" . "clear")
                        ("clea" . "clear")
                        ("cleanup" . "sudo guix system delete-generations; guix package -d; guix gc")
                        ("cleat" . "clear")
                        ("comp" . "gcc -std=c17 -Wall -Wextra -fstack-protector -g3 -lm")
                        ("em" . "/usr/bin/emacs -nw")
                        ("grep" . "grep --color=auto")
                        ("la" . "ls -AF --color=auto")
                        ("lcear" . "clear")
                        ("ll" . "ls -lAghF --color=auto")
                        ("ls" . "ls -F --color=auto")))
             ;; (bashrc (list (local-file
             ;;                "/home/felix//guix-config/.bashrc"
             ;;                "bashrc")))
             ;; (bash-profile (list (local-file
             ;;                      "/home/felix/system-config/.bash_profile"
             ;;                      "bash_profile")))
	     )))))
