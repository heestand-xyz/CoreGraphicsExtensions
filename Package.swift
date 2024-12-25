// swift-tools-version: 6.0

import PackageDescription

let package = Package(
    name: "CoreGraphicsExtensions",
    platforms: [
        .iOS(.v16),
        .tvOS(.v16),
        .macOS(.v13),
        .watchOS(.v9),
        .visionOS(.v1),
    ],
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
