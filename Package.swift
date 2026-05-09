// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "example-swift-swiftpm",
    products: [
        .executable(name: "example-swift-swiftpm", targets: ["example-swift-swiftpm"])
    ],
    dependencies: [
        // vapor 3.3.4: older release with known security issues in routing/sessions
        .package(url: "https://github.com/vapor/vapor.git", exact: "3.3.4"),
        // swift-argument-parser 1.3.0: safe, used for CLI
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
