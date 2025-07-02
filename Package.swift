// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKit-1.1.0-4dc1ac2b-3016-418a-a204-8e9db78248d5.xcframework.zip"
let remoteKotlinChecksum = "4cb0c8daec421b570dc946f5d6aa5f948447415201daa456f09b7fc349863d37"
let packageName = "RealtimeKit"
// END KMMBRIDGE BLOCK

let package = Package(
    name: "RealtimeKit",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: packageName, targets: [packageName, "DyteWebRTC"]),
        .library(name: "DyteWebRTC", targets: ["DyteWebRTC"]),
    ],
    targets: [
        .binaryTarget(
            name: "DyteWebRTC",
            url: "https://sdk-assets.realtime.cloudflare.com/DyteWebRTC_v0.0.4.zip",
            checksum: "25318dfb4bd018fde6ed7fd3337d9aa1c62fc8b39ab985c60fa530eb3819e68a"
        ),
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
    ]
)
