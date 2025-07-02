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
        .library(name: packageName, targets: [packageName, "RTKWebRTC"]),
        .library(name: "RTKWebRTC", targets: ["RTKWebRTC"]),
    ],
    targets: [
        .binaryTarget(
            name: "RTKWebRTC",
            url: "https://sdk-assets.realtime.cloudflare.com/RTKWebRTC-v125.6422.07.zip",
            checksum: "114cb3ea15c5709f2c35d2b1c7a64e742a6902d375d54895984263bb79d75ce3"
        ),
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        ),
    ]
)
