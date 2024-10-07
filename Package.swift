// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let remoteUrl = "https://github.com/Dhaval369/SPMDemo/raw/main/SnapSPMDemo/Archive/SCSDKCameraKit.xcframework.zip"
let remoteChecksum = "38041cb81459503e4e304c091f9a2df12f3c788862de6db704877ac1342aa08b"
let packageName = "MyLibrary"

let package = Package(
    name: "MyLibrary",
    defaultLocalization: "en", platforms: [.iOS(.v13)],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: packageName,
            targets: [packageName]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        //.binaryTarget(name: "SCSDKCameraKit", path: "./MyLibrary/Frameworks/SCSDKCameraKit.xcframework"),
        //.binaryTarget(name: "SCSDKCoreKit", path: "./MyLibrary/Frameworks/SCSDKCoreKit.xcframework"),
        //.binaryTarget(name: "SCSDKCreativeKit", path: "./MyLibrary/Frameworks/SCSDKCreativeKit.xcframework"),
        .binaryTarget(name: "SCSDKCameraKit", url: remoteUrl, checksum: remoteChecksum),
        .target(name: packageName, dependencies: ["SCSDKCameraKit"])
    ]
)
