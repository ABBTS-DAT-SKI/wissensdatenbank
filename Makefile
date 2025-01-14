 lam.PHONY: help install test docs-serve

help:
	@echo "-----------------------"
	@echo "Available make targets:"
	@echo ""
	@echo "help	 	- show this help"
	@echo "install		- install all dependencies"
	@echo "docs-serve	- run the documentation server"
	@echo "-----------------------"

install:
	uv sync

docs-serve:
	uv run mkdocs serve

.DEFAULT_GOAL := help