// swift-tools-version:5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

fatalError("intentionally broken package manifest")

let package = Package(
    name: "swift-test-pkg-1",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "swift-test-pkg-1",
            targets: ["swift-test-pkg-1"]),
    ],
    dependencies: [
        .package(url: "https://github.com/finestructure/swift-test-pkg-2.git",
                 from: "1.0.0")
    ],
    targets: [
        .target(
            name: "swift-test-pkg-1",
            dependencies: [
                .product(name: "swift-test-pkg-2", package: "swift-test-pkg-2")
            ]),
        .testTarget(
            name: "swift-test-pkg-1Tests",
            dependencies: ["swift-test-pkg-1"]),
    ]
)
