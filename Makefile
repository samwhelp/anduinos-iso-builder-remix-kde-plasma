
default: help
.PHONY: default

help:
	@echo 'Usage:'
	@echo '	$$ make [action]'
	@echo
	@echo 'Ex:'
	@echo '	$$ make'
	@echo '	$$ make help'
	@echo
	@echo '	$$ make combine-via-git'
	@echo
	@echo '	$$ make combine-via-wget'
	@echo
	@echo '	$$ make only-combine'
	@echo
	@echo '	$$ make tips-next-step'
	@echo
.PHONY: help




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
	@echo '[Next Step]: cd ~/work/anduinos-iso-builder-xfce/iso-profile'
.PHONY: tips-next-step
