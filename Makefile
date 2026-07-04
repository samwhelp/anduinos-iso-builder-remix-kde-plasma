
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Example:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make prepare'
	@echo
	@echo '	$$ make combine-via-git'
	@echo '	$$ make combine-via-wget'
	@echo '	$$ make only-combine'
	@echo
	@echo '	$$ make tips-next-step'
	@echo
.PHONY: help




prepare:
	@./prepare.sh
.PHONY: prepare




combine-via-git:
	@./combine-via-git.sh
.PHONY: combine-via-git




combine-via-wget:
	@./combine-via-wget.sh
.PHONY: combine-via-git




only-combine:
	@./only-combine.sh
.PHONY: only-combine




tips-next-step:
	@echo '[Next Step]: cd ~/work/anduinos-iso-builder-remix-base/iso-profile'
.PHONY: tips-next-step
