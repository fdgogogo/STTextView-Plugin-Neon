// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NeonPlugin",
    platforms: [.macOS(.v12)],
    products: [
        .library(
            name: "NeonPlugin",
            targets: ["NeonPlugin"]),
    ],
    dependencies: [
        .package(url: "https://github.com/krzyzanowskim/STTextView", from: "0.8.13"),
        .package(url: "https://github.com/ChimeHQ/Neon.git", from: "0.5.1"),
        .package(url: "https://github.com/fdgogogo/tree-sitter-xcframework.git", branch: "main")
    ],
    targets: [
        .target(
            name: "NeonPlugin",
            dependencies: [
                .product(name: "STTextView", package: "STTextView"),
                "Neon",
                .product(name: "TreeSitter", package: "tree-sitter-xcframework")
            ]
        )
    ]
)
