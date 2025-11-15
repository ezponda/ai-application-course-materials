# Makefile for AI Application Course Materials
# Jupyter Book build and notebook execution

.PHONY: help install execute build clean serve all

help:
	@echo "Available targets:"
	@echo "  install  - Install required dependencies (jupyter-book)"
	@echo "  execute  - Execute all notebooks (re-run cells and save outputs)"
	@echo "  build    - Build the Jupyter Book HTML site"
	@echo "  clean    - Remove build artifacts"
	@echo "  serve    - Start a local server to preview the book"
	@echo "  all      - Execute notebooks and build the book"

install:
	pip install "jupyter-book<2.0" nbconvert ipykernel

execute:
	@echo "Executing all notebooks..."
	@for nb in notebooks/*.ipynb; do \
		echo "Running $$nb..."; \
		jupyter nbconvert --to notebook --execute --inplace "$$nb" || true; \
	done
	@echo "Done executing notebooks."

build:
	@echo "Building Jupyter Book..."
	jupyter-book build .
	@echo "Build complete. Open _build/html/index.html to view."

clean:
	@echo "Cleaning build artifacts..."
	jupyter-book clean .
	rm -rf _build/
	@echo "Clean complete."

serve:
	@echo "Starting local server at http://localhost:8000"
	@cd _build/html && python -m http.server 8000

all: execute build
