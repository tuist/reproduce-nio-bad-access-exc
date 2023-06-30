// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "PackageName",
    dependencies: [
        .package(url: "https://github.com/swift-server/swift-service-lifecycle.git", revision: "1.0.0-alpha.11"),
    ]
)