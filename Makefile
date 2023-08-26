.DEFAULT_GOAL := init

.PHONY: init
init: ## install poetry and development dependencies
	pip install poetry
	poetry env use python
	poetry install --sync

.PHONY: all
all: ## run code formatter and linter
	all: format lint

.PHONY: format
format: ## run code formatter
	poetry run isort -rc -sp .isort.cfg .
	poetry run black .


.PHONY: check
check: ## check code formatting errors
	poetry run black . --check --diff

.PHONY: lint
lint: ## run mypy, flake8, and isort linter checks
	poetry run mypy -V --config-file=mypy.ini
	poetry run flake8 .
	poetry run isort -rc -sp .isort.cfg
