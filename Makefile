.PHONY: eval docs build clean test all

# Default spec version
VERSION ?= v3

# Evaluate the spec
eval:
	dss eval -d ./specs/$(VERSION) --json > ./evals/$(VERSION).json
	@echo "Evaluation saved to ./evals/$(VERSION).json"

# Generate HTML documentation
docs: eval
	dss render -d ./specs/$(VERSION) --eval ./evals/$(VERSION).json --output ./docs/$(VERSION)
	@echo "Documentation generated in ./docs/$(VERSION)"

# Build the MCP server
build:
	go build -o bin/dss-material-mcp ./cmd/dss-material-mcp

# Install the MCP server
install:
	go install ./cmd/dss-material-mcp

# Run tests
test:
	go test -v ./...

# Clean generated files
clean:
	rm -rf ./bin ./evals/*.json ./docs/v3

# Run all build steps
all: eval docs build
	@echo "Build complete!"

# Validate spec without saving
check:
	dss eval -d ./specs/$(VERSION) --min-score 70
