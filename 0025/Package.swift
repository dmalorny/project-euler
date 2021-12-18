// swift-tools-version:5.5
import PackageDescription

let package = Package(name: "0025",
    dependencies: [
        .package(url: "https://github.com/attaswift/BigInt.git", from: "5.3.0")
    ],
    targets: [
        .executableTarget(name: "0025", dependencies: ["BigInt"]),
    ]
)
