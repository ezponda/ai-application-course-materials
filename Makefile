# Makefile for AI Application Course Materials
# Jupyter Book build and notebook execution using uv for environment management

.PHONY: help venv install execute build clean serve all

VENV := .venv
UV := uv
PYTHON := $(VENV)/bin/python
PIP := $(VENV)/bin/pip
JUPYTER := $(VENV)/bin/jupyter
JUPYTER_BOOK := $(VENV)/bin/jupyter-book

NOTEBOOKS = \
	notebooks/01_cv_applications.ipynb \
	notebooks/02_what_is_an_image.ipynb \
	notebooks/03_intro_to_pillow.ipynb \
	notebooks/04_intro_to_opencv.ipynb \
	notebooks/05_cnn_theory_keras.ipynb \
	notebooks/06_transfer_learning.ipynb \
	notebooks/07_cv_tasks_theory.ipynb \
	notebooks/07_intro_to_ultralytics.ipynb \
	notebooks/07_object_detection_with_ultralytics.ipynb \
	notebooks/07b_segmentation_and_pose_with_ultralytics.ipynb \
	notebooks/07c_object_tracking_with_ultralytics.ipynb \
	notebooks/07d_people_counting_store_entrance.ipynb \
	notebooks/08_ai_agents_intro.ipynb

help:
	@echo "Available targets:"
	@echo "  venv     - Create virtual environment with uv"
	@echo "  install  - Install all dependencies into venv"
	@echo "  execute  - Execute all notebooks (re-run cells and save outputs)"
	@echo "  build    - Build the Jupyter Book HTML site"
	@echo "  clean    - Remove build artifacts"
	@echo "  serve    - Start a local server to preview the book"
	@echo "  all      - Create venv, install deps, execute notebooks, and build"

venv:
	@echo "Creating virtual environment with uv..."
	$(UV) venv $(VENV) --python 3.11
	@echo "Virtual environment created at $(VENV)"

install: venv
	@echo "Installing dependencies..."
	$(UV) pip install -r requirements.txt --python $(VENV)
	$(UV) pip install nbconvert ipykernel --python $(VENV)
	@echo "Registering Jupyter kernel..."
	$(PYTHON) -m ipykernel install --user --name=ai-course --display-name="AI Course (Python 3.11)"
	@echo "Dependencies installed."

execute:
	@if [ ! -d "$(VENV)" ]; then echo "Run 'make install' first"; exit 1; fi
	@echo "Executing all course notebooks..."
	@for nb in $(NOTEBOOKS); do \
		echo "Running $$nb..."; \
		JUPYTER_CONFIG_DIR=/tmp/empty_jupyter_config $(JUPYTER) nbconvert --to notebook --execute --inplace "$$nb"; \
	done
	@echo "Done executing notebooks."

build:
	@if [ ! -d "$(VENV)" ]; then echo "Run 'make install' first"; exit 1; fi
	@echo "Building Jupyter Book..."
	$(JUPYTER_BOOK) build .
	@echo "Build complete. Open _build/html/index.html to view."

clean:
	@echo "Cleaning build artifacts..."
	rm -rf _build/
	@echo "Clean complete."

clean-all: clean
	@echo "Removing virtual environment..."
	rm -rf $(VENV)
	@echo "Full clean complete."

serve:
	@echo "Starting local server at http://localhost:8000"
	@cd _build/html && python -m http.server 8000

all: install execute build
