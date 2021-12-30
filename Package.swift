// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "project-euler",
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0"),
        .package(url: "https://github.com/apple/swift-algorithms.git", .upToNextMajor(from: "1.0.0")),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "euler",
            dependencies: [
                "BigInt",
                .product(name: "Algorithms", package: "swift-algorithms"),
            ],
            resources: [
              .copy("Resources")
            ]
        ),
        .testTarget(
            name: "problemTests",
            dependencies: ["euler"]
        ),
    ]
)
