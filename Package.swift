// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "example-swift-swiftpm",
    products: [
        .executable(name: "example-swift-swiftpm", targets: ["example-swift-swiftpm"])
    ],
    dependencies: [
        // vapor 4.89.0: web framework with many transitive SPM dependencies
        .package(url: "https://github.com/vapor/vapor.git", from: "4.89.0"),
        // swift-argument-parser: CLI parsing
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.3.0"),
    ],
    targets: [
        .executableTarget(
            name: "example-swift-swiftpm",
            dependencies: [
                .product(name: "Vapor", package: "vapor"),
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]
        ),
        .testTarget(
            name: "example-swift-swiftpmTests",
            dependencies: ["example-swift-swiftpm"]
        ),
    ]
)
