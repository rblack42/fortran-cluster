# Modular Make - top level makefile
PROJPATH = $(PWD)
PROJNAME = $(notdir $(PROJPATH))
APPNAME  = shop_catalog
MK = ~/_mk

include $(wildcard $(MK)/*.mk)
TARGET: $(APPNAME)

.PHONY: cluster
cluster:
	cd ansible && \
		ansible-playbook -vv site.yml --ask-become-pass

.PHONY: check
check:
	nmap 192.168.2.201-204

