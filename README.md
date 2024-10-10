# Python Template

## Getting Started

1. Clone this repository:

   ```bash
   git clone https://github.com/jagreehal/python-template.git
   cd python-template
   ```

2. Set up the virtual environment and install dependencies:

   ```bash
   make install
   ```

   This command uses `pip` to create and manage the virtual environment and install all project dependencies, including development dependencies.

3. Activate the virtual environment:
   If you need to manually activate the environment, you can do so like this:

   - On Unix or MacOS:

   ```bash
     source .venv/bin/activate
   ```

   - On Windows:

   ```bash
    .venv\Scripts\activate
   ```

## Available Make Commands

This project uses a Makefile to simplify common development tasks. Here's an overview of available commands:

- `make install`: Sets up the virtual environment and installs all dependencies using `pip`.
- `make lint`: Runs the linter (ruff) to check your code for potential issues.
- `make format`: Formats your code using `ruff` and `black`.
- `make test`: Runs your tests using `pytest`.
- `make type-check`: Runs the type checker (mypy) on your code.
- `make update-deps`: Updates the project dependencies.
- `make lock-deps`: Locks the current versions of installed dependencies into `requirements.txt`.
- `make clean`: Removes the virtual environment and cleans up cache files.
- `make all`: Runs `install`, `lint`, `format`, `test`, and `type-check` in sequence.

## Development Workflow

1. Make changes to your code.
2. Run linter and formatter:

   ```bash
   make lint
   make format
   ```

3. Run tests:

   ```bash
   make test
   ```

4. Check types:

   ```bash
   make type-check
   ```

5. Before committing, you can run all
   checks:

   ```bash
   make all
   ```

## Locking Dependencies

To lock the current versions of all dependencies into `requirements.txt`, use:

```bash
make lock-deps
```

## Cleaning the Environment

To remove the virtual environment and clean up cache files, use:

```bash
make clean
```

## License

This project is licensed under the MIT License.
