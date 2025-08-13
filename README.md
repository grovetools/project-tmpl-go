# grove-project-tmpl-go

Template for Go projects in the Grove ecosystem.

## Overview

This repository contains the standard template for creating new Go-based Grove projects. It provides the idiomatic structure, configuration files, and boilerplate code that all Grove Go projects should follow.

## Structure

```
grove-project-tmpl-go/
├── template/                    # Template files
│   ├── .github/                 # GitHub Actions workflows
│   ├── cmd/                     # Command implementations
│   ├── tests/                   # Test structure
│   ├── go.mod.tmpl             # Go module template
│   ├── grove.yml.tmpl          # Grove configuration (includes type: go)
│   ├── Makefile.tmpl           # Standard build targets
│   └── ...                     # Other template files
└── grove-template.yml          # Template manifest
```

## Usage

This template is used by `grove add-repo` when creating new Go projects:

```bash
grove add-repo my-new-project
# or explicitly:
grove add-repo my-new-project --template go
```

## Template Variables

The templates use the following variables:
- `{{.RepoName}}` - The repository name
- `{{.BinaryAlias}}` - The binary alias/command name
- `{{.Description}}` - Project description
- `{{.GoVersion}}` - Go version
- `{{.CoreVersion}}` - grove-core version
- `{{.TendVersion}}` - grove-tend version

## Contributing

This is a private repository. Please ensure all contributions follow the Grove ecosystem conventions.