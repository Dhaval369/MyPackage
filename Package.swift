// swift-tools-version: 5.10

import PackageDescription

let packageName = "MyLibrary"

let remoteUrl = "https://github.com/Dhaval369/SPMDemo/raw/main/SnapSPMDemo/Archive/SCSDKCameraKit.xcframework.zip"
let remoteChecksum = "38041cb81459503e4e304c091f9a2df12f3c788862de6db704877ac1342aa08b"
let cameraKit = "SCSDKCameraKit"

let coreKit = "SCSDKCoreKit"
let coreKitURL = "https://github.com/Dhaval369/SPMDemo/raw/main/SnapSPMDemo/Archive/SCSDKCoreKit.xcframework.zip"
let coreKitCheckSum = "071db45af3936f28423f557bef4b7caf27636742f1658c8f8c21021e5f7a2406"

let creativeKit = "SCSDKCreativeKit"
let creativeKitURL = "https://github.com/Dhaval369/SPMDemo/raw/main/SnapSPMDemo/Archive/SCSDKCreativeKit.xcframework.zip"
let creativeKitCheckSum = "ecd706e8601c38d091552b64242b1419db7130fae45446a015450a3a4fffabef"


let package = Package(
    name: "MyLibrary",
    defaultLocalization: "en", platforms: [.iOS(.v13)],
    products: [
        .library(
            name: packageName,
            targets: [packageName]),
    ],
    targets: [
        //.binaryTarget(name: creativeKit, url: creativeKitURL, checksum: creativeKitCheckSum),
        .binaryTarget(name: coreKit, url: coreKitURL, checksum: coreKitCheckSum),
        //.binaryTarget(name: cameraKit, url: remoteUrl, checksum: remoteChecksum),
        .target(name: packageName, dependencies: [coreKit], path: "./MyLibrary/Sources")
    ]
)
