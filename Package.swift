// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "SwiftCLIToolbox",
    products: [
        .library(
            name: "SwiftCLIToolbox",
            targets: ["SwiftCLIToolbox"]),
    ],
    dependencies: [
        .package(url: "https://github.com/onevcat/Rainbow", from: "3.0.0"),
        .package(url: "https://github.com/kylef/Commander", from: "0.8.0"),
        .package(url: "https://github.com/SwiftGen/StencilSwiftKit", from: "2.7.1"),
    ],
    targets: [
        .target(
            name: "SwiftCLIToolbox",
            dependencies: ["Rainbow", "Commander", "StencilSwiftKit"]),
        .testTarget(
            name: "SwiftCLIToolboxTests",
            dependencies: ["SwiftCLIToolbox"]),
    ]
)
