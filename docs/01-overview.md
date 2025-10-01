# Grove Go Project Template

This repository contains a project template for generating Go-based command-line interface (CLI) tools that integrate with the Grove ecosystem. It provides a standard project structure, CI/CD workflow files, and build automation scripts.

## How It Works

The template is processed by the `grove` tool during repository creation. Files with a `.tmpl` extension are executed as Go templates, substituting variables like the repository name (`{{.RepoName}}`) and binary alias (`{{.BinaryAlias}}`). All other files are copied directly into the new project's directory structure.

## Usage

This template is consumed by the `grove add-repo` command.

```bash
# Create a new Go project using this template
grove add-repo my-new-tool --alias mnt
```

This command generates a new project directory containing a runnable skeleton application based on the files in this template.

## Project Structure

A new project generated from this template will have the following structure:

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

-   **`cmd/`**: Contains Cobra command source files.
-   **`tests/e2e/`**: Contains an end-to-end test harness using `grove-tend`.
-   **`go.mod`**: Defines the Go module and its dependencies.
-   **`grove.yml`**: Configures the tool's name and binary path for the Grove ecosystem.
-   **`Makefile`**: Provides `make` targets for building, testing, and linting.
-   **`main.go`**: The application entry point that executes the root Cobra command.

## Getting Started

After a new project has been created from this template, the following steps can be used to build and run it:

1.  **Navigate to the new directory**:
    ```bash
    cd my-new-tool
    ```

2.  **Resolve dependencies**:
    Run `go mod tidy` to download and verify dependencies.
    ```bash
    go mod tidy
    ```

3.  **Build the binary**:
    Use the `Makefile` to build the tool. The binary is created at `./bin/my-new-tool`.
    ```bash
    make build
    ```

4.  **Run the command**:
    Execute the compiled binary.
    ```bash
    ./bin/my-new-tool --help
    ```

5.  **Run tests**:
    The template includes unit and end-to-end test frameworks.
    ```bash
    make test
    make test-e2e
    ```