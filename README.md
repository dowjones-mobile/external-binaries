# External Binaries

A place to dump your external binaries that are dependencies to the WSJ-iOS app!

## XCFrameworks
Starting with Swift Package Manager and Xcode 11, XCFrameworks are Apple's Go-To source to avoid fat binaries. 

There are two scripts that create XCFrameworks for you - either from static libraries (.a files mostly) or from static Frameworks (.framework folder).

Pull these scripts into the directory that you need and execute it. The only dependency is that the framework you want converted is in the directory.

### Checksums

**GoogleIMA**
```
82b4f70742640d276a10f5fcf9bc71ca9c2ba7f898534fb5fb970b273d526e8d  GoogleIMA/3.13.0/GoogleInteractiveMediaAds.xcframework.zip
```

**GoogleMobileAds**
For the latest version (with xcframework support) please use: https://developers.google.com/admob/ios/download and add it to this repo including sha256 checksum for version keeping
```
55adfca3195385a334adf5ed758a4fb0805ec3a35abe5ea9fffcf507cd2090cd  GoogleMobileAds/7.69.0/GoogleAppMeasurement.xcframework.zip
7fad1e8b61bb15e9b7e3865c3f97fbc2b1f32bc42ef3ed01760ebbd98673fe40  GoogleMobileAds/7.69.0/GoogleMobileAds.xcframework.zip
78b932eace1d7a7a53042c9bfa4cc7645a79222f2a1ad390d9903afc8ff111f8  GoogleMobileAds/7.69.0/GoogleUtilities.xcframework.zip
b649ef1585b035e8e0a1b2094f6d21e9655a74ef2e33d2c480026de17b125304  GoogleMobileAds/7.69.0/PromisesObjC.xcframework.zip
941b57ab9210c28b04f14d4b3c40cd5544ab7810bdd7e24e1c577fac3548f353  GoogleMobileAds/7.69.0/UserMessagingPlatform.xcframework.zip
7efa6ae0103c3d701ab2dc3948bf0fe2397d5d4d8a97d142c330c6caac2aa0be  GoogleMobileAds/7.69.0/nanopb.xcframework.zip
```
