// swift-tools-version:5.3

import PackageDescription

let package = Package(
    name: "CoreGraphicsExtensions",
    products: [
        .library(
            name: "CoreGraphicsExtensions",
            targets: ["CoreGraphicsExtensions"]),
    ],
    targets: [
        .target(
            name: "CoreGraphicsExtensions",
            dependencies: []),
    ]
)
