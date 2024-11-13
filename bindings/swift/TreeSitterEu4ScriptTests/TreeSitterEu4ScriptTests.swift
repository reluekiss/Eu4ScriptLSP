import XCTest
import SwiftTreeSitter
import TreeSitterEu4Script

final class TreeSitterEu4ScriptTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_eu4_script())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Eu4Script grammar")
    }
}
