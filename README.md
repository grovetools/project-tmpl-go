<!-- DOCGEN:OVERVIEW:START -->

# Grove Go Project Template

This repository provides a project template for creating new Go-based command-line interface (CLI) tools that integrate with the Grove ecosystem. It establishes a standard project structure, includes boilerplate for build automation and testing, and ensures consistency across all Grove tools.

## Usage

This template is used by the `grove add-repo` command to scaffold a new repository. When creating a Go project, this template is used by default.

```bash
# Create a new Go project using this template
grove add-repo my-new-tool --alias mnt --ecosystem --skip-github
```

You can also specify it explicitly:

```bash
grove add-repo my-new-tool --template go
```

This process generates a new project directory with a complete, runnable skeleton application based on the files in this template.

## Project Structure

A new project created from this template will have the following structure:

```
my-new-tool/
├── .github/
│   └── workflows/
│       ├── ci.yml         # Continuous integration workflow
│       └── release.yml    # Automated release workflow
├── cmd/
│   ├── root.go          # Cobra root command setup
│   └── version.go       # Standard version command
├── tests/
│   └── e2e/             # End-to-end test suite setup with grove-tend
├── .gitignore
├── CHANGELOG.md
├── go.mod               # Go module definition
├── grove.yml            # Grove tool configuration
├── Makefile             # Standard build, test, and lint targets
├── main.go              # Main application entry point
└── README.md
```

-   **`cmd/`**: Contains the Cobra command implementations. `root.go` sets up the main command, and you can add other command files here.
-   **`tests/e2e/`**: A pre-configured end-to-end testing harness using `grove-tend`.
-   **`go.mod`**: Defines the Go module and its dependencies, including `grove-core`.
-   **`grove.yml`**: Configures the tool for the Grove ecosystem, defining its name, type, and binary path.
-   **`Makefile`**: Provides standardized `make` targets for common development tasks like building, testing, and linting.
-   **`main.go`**: The entry point for the application, which executes the root Cobra command.

## Getting Started

After creating a new project from this template, you can immediately start development with these steps:

1.  **Navigate to the new directory**:
    ```bash
    cd my-new-tool
    ```

2.  **Resolve dependencies**:
    The template includes initial dependencies. Run `go mod tidy` to ensure they are correctly resolved.
    ```bash
    go mod tidy
    ```

3.  **Build the binary**:
    Use the provided `Makefile` to build the tool.
    ```bash
    make build
    ```
    This creates the binary at `./bin/my-new-tool`.

4.  **Run the new command**:
    Execute the compiled binary to see the default help output.
    ```bash
    ./bin/my-new-tool --help
    ```

5.  **Run tests**:
    The template includes a testing framework. Run the tests to verify the initial setup.
    ```bash
    make test
    make test-e2e
    ```

<!-- DOCGEN:OVERVIEW:END -->


<!-- DOCGEN:TOC:START -->

See the [documentation](docs/) for detailed usage instructions:
- [Overview](docs/01-overview.md)

<!-- DOCGEN:TOC:END -->
