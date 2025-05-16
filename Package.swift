// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://dyte-assets.s3.ap-south-1.amazonaws.com/sdk/ios_core/RealtimeKitCore-0.2.1-04afa849-2b7a-4f60-bc43-1248dbfcb249.xcframework.zip"
let remoteKotlinChecksum = "22e8dac70e219d240999249629cec34d7d4d1298a32940dce30b9c240f48f31d"
let packageName = "RealtimeKitCore"
// END KMMBRIDGE BLOCK

let package = Package(
    name: "RealtimeKitCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: packageName, targets: [packageName, "DyteWebRTC"]),
        .library(name: "DyteWebRTC", targets: ["DyteWebRTC"]),
    ],
    targets: [
        .binaryTarget(
            name: "DyteWebRTC",
            url: "https://dyte-assets.s3.ap-south-1.amazonaws.com/sdk/ios_core/DyteWebRTC_v0.0.4.zip",
            checksum: "25318dfb4bd018fde6ed7fd3337d9aa1c62fc8b39ab985c60fa530eb3819e68a"
        ),
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
    ]
)
