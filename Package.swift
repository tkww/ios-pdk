// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "PinterestSDK",
    products: [
        .library(name: "PinterestSDK", targets: ["PinterestSDK"])
    ],
    dependencies: [
        .package(url: "https://github.com/AFNetworking/AFNetworking", from: "3.0"),
        .package(url: "https://github.com/tkww/SAMKeychain", .branch("master")),
    ],
    targets: [
        .target(
            name: "PinterestSDK",
            dependencies: ["AFNetworking", "SAMKeychain"],
            path: ".",
            exclude: ["Example"],
            sources: ["Pod/Classes"],
            publicHeadersPath: "include"
        )
    ]
)