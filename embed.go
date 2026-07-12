// Package dssmaterial provides embedded Material Design specs.
package dssmaterial

import (
	"embed"
	"io/fs"
)

//go:embed specs/v3
var v3SpecsFS embed.FS

// V3SpecsFS returns the embedded filesystem for Material v3 specs.
func V3SpecsFS() (fs.FS, error) {
	return fs.Sub(v3SpecsFS, "specs/v3")
}
