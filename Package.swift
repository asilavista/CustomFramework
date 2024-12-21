// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
// source: https://www.youtube.com/watch?v=2k4mMdLfIKY
let package = Package(
    name: "CustomFramework",
    platforms: [
      .macOS(.v12), .iOS(.v15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "CustomFramework",
            targets: ["CustomFramework"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .binaryTarget(
            name: "CustomFramework",
            path: "./Sources/CustomFramework.xcframework")
    ]
)
