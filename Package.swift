// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "external-binaries",
    products: [
        .library(name: "GoogleMobileAds", targets: ["GoogleMobileAds"]),
        .library(name: "GoogleAppMeasurement", targets: ["GoogleAppMeasurement"]),
        .library(name: "GoogleUtilities", targets: ["GoogleUtilities"]),
        .library(name: "PromisesObjC", targets: ["PromisesObjC"]),
        .library(name: "UserMessagingPlatform", targets: ["UserMessagingPlatform"]),
        .library(name: "nanopb", targets: ["nanopb"]),
        .library(name: "GoogleInteractiveMediaAds", targets: ["GoogleInteractiveMediaAds"]),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "GoogleMobileAds",
            path: "GoogleMobileAds/8.8.0/GoogleMobileAds.xcframework"
        ),
        .binaryTarget(
            name: "GoogleAppMeasurement",
            path: "GoogleMobileAds/7.69.0/GoogleAppMeasurement.xcframework"
        ),
        .binaryTarget(
            name: "GoogleUtilities",
            path: "GoogleMobileAds/7.69.0/GoogleUtilities.xcframework"
        ),
        .binaryTarget(
            name: "PromisesObjC",
            path: "GoogleMobileAds/7.69.0/PromisesObjC.xcframework"
        ),
        .binaryTarget(
            name: "UserMessagingPlatform",
            path: "GoogleMobileAds/7.69.0/UserMessagingPlatform.xcframework"
        ),
        .binaryTarget(
            name: "nanopb",
            path: "GoogleMobileAds/7.69.0/nanopb.xcframework"
        ),
        .binaryTarget(
            name: "GoogleInteractiveMediaAds",
            path: "GoogleIMA/3.13.0/GoogleInteractiveMediaAds.xcframework"
        )
    ]
)
