deploy:
	guix pull
	guix home reconfigure guix-config/home-configuration.scm
