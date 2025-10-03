## v0.1.1-nightly.a1b2c3d (2025-10-03)

## v0.1.0 (2025-10-01)

This release introduces a documentation generation system for the project template. The initial structure was established with configuration files, rules, and prompts to automate content creation (1b3f361, 563e010). Key new functionality includes automatic Table of Contents (TOC) generation for the main `README.md` file (450def3, a74d6ad). The system has also been refined by standardizing the configuration file format and improving the conciseness of the generated output (3122d3b, 910d09b).

### Features

- Add automatic Table of Contents generation for README files (450def3)
- Make generated documentation more succinct and refine generation rules (910d09b)

### Documentation

- Add initial documentation structure with docgen configuration (1b3f361)
- Update docgen configuration and add initial overview documentation (563e010)
- Update docgen configuration and README templates for TOC support (a74d6ad)

### Refactoring

- Standardize the key order and settings in docgen.config.yml (3122d3b)

### File Changes

```
 README.md                   | 113 +++++++++++++++++++++++++++++++-------------
 docs/01-overview.md         |  83 ++++++++++++++++++++++++++++++++
 docs/README.md.tpl          |   6 +++
 docs/docgen.config.yml      |  24 ++++++++++
 docs/docs.rules             |   1 +
 docs/prompts/01-overview.md |  13 +++++
 pkg/docs/docs.json          |  32 +++++++++++++
 7 files changed, 240 insertions(+), 32 deletions(-)
```

## v0.0.4 (2025-09-11)

### Features

* add IsPublic conditional

## v0.0.3 (2025-08-25)

### Continuous Integration

* disable linting in workflow templates

## v0.0.2 (2025-08-15)

### Features

* add tmpl files

