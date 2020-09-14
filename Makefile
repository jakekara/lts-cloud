start-mongo:
	cd mongo; \
		. scripts/run.sh

start-blacklab:
	cd tomcat; \
		. scripts/run-server.sh


start-lts-app-frontend:
	cd lts-app; \
		. ~/.zshrc; \
		. scripts/develop-frontend.sh

start-lts-app-backend:
	cd lts-app; \
		. ~/.zshrc; \
		. scripts/develop.sh


