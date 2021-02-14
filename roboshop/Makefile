help:
	@grep -h '##' $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\s//' | sed -e 's/##//'

common:
	@sh components/common.sh

cart: common
cart: 						## Install Cart Component
	@sh components/cart.sh

catalogue: common
catalogue: 					##Install Catalogue Component
	@sh component/catalogue.sh

frontend: common 			##Install Frontend Component
	@sh components/frontend.sh
