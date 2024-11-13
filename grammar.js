/**
 * @file Parser for Eu4 Script
 * @author relue <relue@cock.lu>
 * @license MIT
 */

/// <reference types="tree-sitter-cli/dsl" />
// @ts-check

module.exports = grammar({
  name: "eu4_script",

  rules: {
    // TODO: add the actual grammar rules
    source_file: $ => "hello"
  }
});
