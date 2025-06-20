// swift-tools-version:5.5
import PackageDescription

// BEGIN KMMBRIDGE VARIABLES BLOCK (do not edit)
let remoteKotlinUrl = "https://sdk-assets.realtime.cloudflare.com/RealtimeKit-1.0.1-58810ff5-f86f-425b-8980-1435d4e90932.xcframework.zip"
let remoteKotlinChecksum = "a3b2d236f8faad81a40bbb2062070cffe7a01fccb995567cc2c55d636fba8b27"
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
