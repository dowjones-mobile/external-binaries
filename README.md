# External Binaries

A place to dump your external binaries that are dependencies to the WSJ-iOS app!

## XCFrameworks
Starting with Swift Package Manager and Xcode 11, XCFrameworks are Apple's Go-To source to avoid fat binaries. 

There are two scripts that create XCFrameworks for you - either from static libraries (.a files mostly) or from static Frameworks (.framework folder).

Pull these scripts into the directory that you need and execute it. The only dependency is that the framework you want converted is in the directory.

### Checksums

**GoogleIMA**
```
ea001cf166cfe0685fd9cd746aafadcfb1d87030fb2fb5b1489cfdaf0e09096f  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleIMA/3.13.0/GoogleInteractiveMediaAds.xcframework.zip
```

**GoogleMobileAds**
For the latest version (with xcframework support) please use: https://developers.google.com/admob/ios/download and add it to this repo including sha256 checksum for version keeping
```
6d3dc48f9bc8b09753439e1bb24d5cb2d69980e0e6a7b470197e614d53b6f351  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/GoogleAppMeasurement.xcframework.zip
f9bca1734dde61527cbc22c21a89885b8788e14244a63f83a07fc835e608d939  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/GoogleMobileAds.xcframework.zip
8a9ee421493df2f5930a922ec29e81b22ff24819e18975fd0bb2ad0f34da2b39  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/GoogleUtilities.xcframework.zip
63d9a97503feb6a64eef0208c8f8e7dbc39fddad00fd5387dae5a01946f2f767  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/PromisesObjC.xcframework.zip
57387f5d2379a35593af6960b88fc0fc23eb8c165316076283d7ea613292eaf2  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/UserMessagingPlatform.xcframework.zip
909d056768877840850915fa7e73681962cdc772a674ea0777d4606258785c25  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/nanopb.xcframework.zip
```
