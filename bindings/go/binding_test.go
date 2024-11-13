package tree_sitter_eu4_script_test

import (
	"testing"

	tree_sitter "github.com/tree-sitter/go-tree-sitter"
	tree_sitter_eu4_script "github.com/reluekiss/eu4scriptlsp/bindings/go"
)

func TestCanLoadGrammar(t *testing.T) {
	language := tree_sitter.NewLanguage(tree_sitter_eu4_script.Language())
	if language == nil {
		t.Errorf("Error loading Eu4Script grammar")
	}
}
