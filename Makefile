WORKING_DIR := openedxscorm

translation.requirements:
	pip install edx-i18n-tools transifex-client

translation.pull:
	tx pull --all

translation.extract:
	cd $(WORKING_DIR) && i18n_tool extract

translation.generate:
	cd $(WORKING_DIR) && i18n_tool generate

translation.push:
	tx push -s
