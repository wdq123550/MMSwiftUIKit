// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "MMSwiftUIKit",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "MMSwiftUIKit", targets: ["MMSwiftUIKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/SnapKit/SnapKit", .upToNextMajor(from: "5.7.1")),
        .package(url: "https://github.com/CoderMJLee/MJRefresh", .upToNextMajor(from: "3.7.9")),
        .package(url: "https://github.com/ruslanskorb/RSKGrowingTextView", .upToNextMajor(from: "8.0.1")),
    ],
    targets: [
        .target(name: "MMSwiftUIKit", dependencies: [
            .product(name: "SnapKit", package: "SnapKit"),
            .product(name: "MJRefresh", package: "MJRefresh"),
            .product(name: "RSKGrowingTextView", package: "RSKGrowingTextView"),
        ]),
        .testTarget(name: "MMSwiftUIKitTests", dependencies: ["MMSwiftUIKit"]),
    ]
)
