help:
	@grep -h '##' $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\s//' | sed -e 's/##//'

common:
	@sh components/common.sh

user: common
user: 						## Install user Component
	@sh components/user.sh

user: common
user: 					##Install user Component
	@sh components/user.sh

frontend: common
frontend:			##Install Frontend Component
	@sh components/frontend.sh

mongodb: common
mongodb:			##Install Frontend Component
	@sh components/mongodb.sh

catalogue: common
catalogue:			##Install Frontend Component
	@sh components/catalogue.sh
