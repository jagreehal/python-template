.PHONY: install lint format test type-check update-deps clean

# Use Python 3.11 explicitly
PYTHON := python3.11
VENV := .venv
BIN := $(VENV)/bin

install:
	@if [ ! -d "$(VENV)" ]; then \
		echo "Virtual environment not found, creating and installing dependencies..."; \
		$(PYTHON) -m uv pip install -e ".[dev]"; \
		echo "Dependencies installed using uv."; \
	else \
		echo "Virtual environment already exists, skipping installation."; \
	fi

lint:
	@echo "Running linter..."
	@uv run ruff check .

format:
	@echo "Formatting code..."
	@uv run ruff check --fix .
	@uv run black .

test:
	@echo "Running tests..."
	@uv run pytest

type-check:
	@echo "Running type checker..."
	@uv run mypy .

update-deps:
	@echo "Updating dependencies using uv..."
	@uv pip install --upgrade -e ".[dev]"
	@echo "Dependencies updated with uv."

clean:
	@echo "Cleaning up virtual environment and cache..."
	@rm -rf $(VENV)  # Remove the virtual environment
	@find . -type d -name "__pycache__" -exec rm -rf {} +
	@find . -type f -name "*.py[co]" -delete
	@echo "Cleaned up environment and cache files."

# Default target
all: install lint format test type-check update-deps
