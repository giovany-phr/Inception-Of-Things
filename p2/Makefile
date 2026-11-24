################################################################################
#                          Makefile configuration                              #
################################################################################


################################################################################
#                                 	Alias                                      #
################################################################################

VM_DEST := /home/vagrant/scripts
SERVER_VM := ngenyS
SCRIPTS_DIR := ./scripts
VAGRANT := vagrant

################################################################################
#                                   Colors                                     #
################################################################################

BLACK 	= \033[0;30m
RED 	= \033[0;31m
GREEN 	= \033[0;32m
YELLOW 	= \033[0;33m
BLUE 	= \033[0;34m
PURPLE 	= \033[0;35m
CYAN 	= \033[0;36m
RESET 	= \033[0m

################################################################################
#                                    Rules                                     #
################################################################################

up:
	@$(VAGRANT) up

stop:
	@$(VAGRANT) halt

destroy:
	@$(VAGRANT) destroy -f

reload:
	@$(VAGRANT) reload

status:
	@$(VAGRANT) status

copy-scripts:
	@echo "Copying server.sh..."
	$(VAGRANT) upload $(SCRIPTS_DIR)/server.sh $(VM_DEST)/server.sh $(SERVER_VM)
	$(VAGRANT) upload $(SCRIPTS_DIR)/.env $(VM_DEST)/.env $(SERVER_VM)

deploy: up copy-scripts

help:
	@echo "$(YELLOW)Commands to use:$(RESET)"
	@echo " make up - launch VM"
	@echo " make stop - stop VM"
	@echo " make destroy - destroy VM"
	@echo " make reload - restart VM"
	@echo " make status - get VM status"
	@echo " make copy-scripts - Copy scripts"
	@echo " make deploy - start and copy scripts"

.PHONY: up stop destroy reload status help