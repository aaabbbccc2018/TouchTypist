// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "SwiftTypeInjector",
    products: [
        .library(
            name: "SwiftTypeInjector",
            targets: ["SwiftTypeInjector"]),
    ],
    dependencies: [
        .package(url: "https://github.com/apple/swift-syntax.git", .exact("0.50000.0")),
        .package(url: "https://github.com/jpsim/SourceKitten.git", .exact("0.22.0")),
        .package(url: "https://github.com/thoughtbot/Curry.git", from: "4.0.2"),
    ],
    targets: [
        .target(
            name: "SwiftTypeInjector",
            dependencies: ["SwiftSyntax", "SourceKittenFramework"]),
        .target(
            name: "TypeCheckedAST",
            dependencies: ["Curry"]),
        .testTarget(
            name: "SwiftTypeInjectorTests",
            dependencies: ["SwiftTypeInjector"]),
        .testTarget(
            name: "TypeCheckedASTTests",
            dependencies: ["TypeCheckedAST"]),
    ]
)
