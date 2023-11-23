// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-test-pkg-1",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swift-test-pkg-1",
            targets: ["swift-test-pkg-1"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-argument-parser.git", from: "1.2.3")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "swift-test-pkg-1",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser")
            ]),
        .testTarget(
            name: "swift-test-pkg-1Tests",
            dependencies: ["swift-test-pkg-1"]),
    ]
)
