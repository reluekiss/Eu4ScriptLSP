// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "TreeSitterEu4Script",
    products: [
        .library(name: "TreeSitterEu4Script", targets: ["TreeSitterEu4Script"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ChimeHQ/SwiftTreeSitter", from: "0.8.0"),
    ],
    targets: [
        .target(
            name: "TreeSitterEu4Script",
            dependencies: [],
            path: ".",
            sources: [
                "src/parser.c",
                // NOTE: if your language has an external scanner, add it here.
            ],
            resources: [
                .copy("queries")
            ],
            publicHeadersPath: "bindings/swift",
            cSettings: [.headerSearchPath("src")]
        ),
        .testTarget(
            name: "TreeSitterEu4ScriptTests",
            dependencies: [
                "SwiftTreeSitter",
                "TreeSitterEu4Script",
            ],
            path: "bindings/swift/TreeSitterEu4ScriptTests"
        )
    ],
    cLanguageStandard: .c11
)
