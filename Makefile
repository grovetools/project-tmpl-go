# Makefile for grove-project-tmpl-go

.PHONY: all build test clean fmt fmt-check vet lint check help

all: test

build:
	@echo "Template project - no build needed"

test:
	@echo "Running tests..."
	@if ! find . -name '*.go' -not -path './template/*' | grep -q .; then \
		echo "No .go files to test (template-only repo)"; \
	else \
		go test -v ./...; \
	fi

clean:
	@echo "Cleaning..."
	@go clean
	@rm -f coverage.out

fmt:
	@echo "Formatting code..."
	@if ! find . -name '*.go' -not -path './template/*' | grep -q .; then \
		echo "No .go files to format (template-only repo)"; \
	else \
		gofumpt -w .; \
	fi

fmt-check:
	@if ! find . -name '*.go' -not -path './template/*' | grep -q .; then \
		echo "No .go files to check (template-only repo)"; \
	else \
		unformatted="$$(gofumpt -l . 2>/dev/null)"; \
		if [ -n "$$unformatted" ]; then \
			echo "Unformatted files (run 'make fmt'):"; \
			echo "$$unformatted" | sed 's/^/  /'; \
			exit 1; \
		fi; \
	fi

vet:
	@echo "Running go vet..."
	@if ! find . -name '*.go' -not -path './template/*' | grep -q .; then \
		echo "No .go files to vet (template-only repo)"; \
	else \
		go vet ./...; \
	fi

lint:
	@echo "Running linter..."
	@if ! find . -name '*.go' -not -path './template/*' | grep -q .; then \
		echo "No .go files to lint (template-only repo)"; \
	elif command -v golangci-lint > /dev/null; then \
		golangci-lint run; \
	else \
		echo "golangci-lint not installed. Install with: go install github.com/golangci/golangci-lint/cmd/golangci-lint@latest"; \
	fi

# Run all checks
check: fmt-check vet lint test

# Show available targets
help:
	@echo "Available targets:"
	@echo "  make test        - Run tests"
	@echo "  make clean       - Clean build artifacts"
	@echo "  make fmt         - Format code"
	@echo "  make vet         - Run go vet"
	@echo "  make lint        - Run linter"
	@echo "  make check       - Run all checks"