// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MarsTimeConverter",
    products: [
        .library(
            name: "MarsTimeConverter",
            targets: ["MarsTimeConverter"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "MarsTimeConverter",
            dependencies: []),
        .testTarget(
            name: "MarsTimeConverterTests",
            dependencies: ["MarsTimeConverter"]),
    ]
)
