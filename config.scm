;; Once installation is complete, you can learn and modify
;; this file to tweak the system configuration, and pass it
;; to the 'guix system reconfigure' command to effect your
;; changes.

;; Indicate which modules to import to access the variables
;; used in this configuration.
(use-modules (gnu)
	     (gnu services docker)
	     (nongnu packages video)
	     (nongnu packages linux)
	     (nongnu system linux-initrd))

(use-service-modules desktop
		     networking
		     xorg
		     pm
		     avahi
		     sysctl
		     dbus
		     docker
		     virtualization)

(use-package-modules terminals
		     audio
		     wm
		     xdisorg
		     certs
		     gnome
		     linux
		     video
		     version-control
		     ssh
		     text-editors)

(operating-system
 (kernel linux)
 (firmware (list linux-firmware))
 ;; (firmware (cons* iwlwifi-firmware %base-firmware))

 (locale "en_US.utf8")
 (timezone "Europe/Berlin")
 (keyboard-layout (keyboard-layout "us"
				   #:options '("ctrl:nocaps")))

 (host-name "hirola")

 ;; The list of user accounts ('root' is implicit).
 (users (cons* (user-account
                (name "felix")
                (comment "Felix")
                (group "users")
                (home-directory "/home/felix")
                (supplementary-groups '("docker"
					"wheel"  ;(default)
                                        "netdev" ;network devices (default)
                                        "kvm"
                                        "tty"
                                        "input"
                                        "docker"
                                        "lp" ;control bluetooth devices
                                        "audio"    ;control audio devices (default)
                                        "video"	   ;(default)
					)))
	       (user-account
		(name "abcdw")
		(group "users")
		(home-directory "/home/abcdw")
		(supplementary-groups '("wheel" "netdev" "audio" "video")))
	       (user-account
		(name "guest")
		(group "users")
		(home-directory "/home/guest")
		(supplementary-groups '("wheel" "netdev" "audio" "video")))
	       %base-user-accounts))

 ;; Packages installed system-wide.  Users can also install packages
 ;; under their own account: use 'guix search KEYWORD' to search
 ;; for packages and 'guix install PACKAGE' to install a package.
 (packages (cons*
	    ;; window manager
	    sway swaylock waybar swaybg swayidle foot fuzzel
	    wl-clipboard

	    blueman
	    ;; interact with hardware
	    network-manager-applet
	    brightnessctl
	    bluez fuse

	    intel-vaapi-driver libva-utils intel-media-driver/nonfree
	    ;; inet
	    git openssh-sans-x
	    mg
	    %base-packages))

 ;; Below is the list of system services.  To search for available
 ;; services, run 'guix system search KEYWORD' in a terminal.
 (services
  (cons*

   ;; Seat management (can't use seatd because Wireplumber depends on elogind) tho there might be minimal package to work around this
   (service elogind-service-type)
   ;; (service seatd-service-type)

   ;; Configure swaylock as a setuid program
   (service screen-locker-service-type
            (screen-locker-configuration
             (name "swaylock")
             (program (file-append swaylock "/bin/swaylock"))
             (using-pam? #t)
             (using-setuid? #f)))

   ;; Set up Polkit to allow `wheel' users to run admin tasks
   polkit-wheel-service

   ;; Power and thermal management services
   (service thermald-service-type)
   (service tlp-service-type
            (tlp-configuration
             (cpu-boost-on-ac? #t)
             (wifi-pwr-on-bat? #t)))

   ;; Networking services
   (service network-manager-service-type)
   (service wpa-supplicant-service-type) ;; Needed by NetworkManager
   (service bluetooth-service-type
            (bluetooth-configuration
             (auto-enable? #t)))
   (service usb-modeswitch-service-type)

   ;; Basic desktop system services (copied from %desktop-services)
   (service avahi-service-type)
   (service udisks-service-type)
   (service upower-service-type)
   (service cups-pk-helper-service-type)
   (service geoclue-service-type)
   (service polkit-service-type)
   (service dbus-root-service-type)
   fontconfig-file-system-service ;; Manage the fontconfig cache

   ;; Sync system clock with time servers
   (service ntp-service-type)

   ;; Add udev rules for a few packages
   (udev-rules-service 'pipewire-add-udev-rules pipewire)
   (udev-rules-service 'brightnessctl-udev-rules brightnessctl)

   ;; Enable Docker containers and virtual machines
   (service containerd-service-type)
   (service docker-service-type)
   ;; (service libvirt-service-type
   ;;          (libvirt-configuration
   ;;           (unix-sock-group "libvirt")
   ;;           (tls-port "16555")))

   (modify-services %base-services
		    ;; enable nonguix substitues
		    (guix-service-type config => (guix-configuration
						  (inherit config)
						  (substitute-urls
						   (append (list "https://substitutes.nonguix.org")
							   %default-substitute-urls))
						  (authorized-keys
						   (append (list (plain-file "non-guix.pub"
									     "(public-key(ecc(curve Ed25519)(q #C1FD53E5D4CE971933EC50C9F307AE2171A2D3B52C804642A7A35F84F3A4EA98#)))"))
							   %default-authorized-guix-keys)))))))


 (bootloader (bootloader-configuration
	      (bootloader grub-efi-bootloader)
	      (targets (list "/boot/efi"))
	      (keyboard-layout keyboard-layout)
	      (extra-initrd "/key-file.cpio")))
 (mapped-devices (list (mapped-device
                        (source (uuid
                                 "b0cced08-acd5-4283-bddb-de980449e8b9"))
                        (target "cryptroot")
			;; make it so the the luks encryption key has to be only typed once
			(type (luks-device-mapping-with-options
			       #:key-file "/key-file.bin")))))


 ;; The list of file systems that get "mounted".  The unique
 ;; file system identifiers there ("UUIDs") can be obtained
 ;; by running 'blkid' in a terminal.
 (file-systems (cons* (file-system
		       (mount-point "/boot/efi")
		       (device (uuid "7AB0-5BC5"
                                     'fat32))
		       (type "vfat"))
                      (file-system
		       (mount-point "/")
		       (device "/dev/mapper/cryptroot")
		       (type "ext4")
		       (dependencies mapped-devices)) %base-file-systems)))
