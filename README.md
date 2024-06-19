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
0e498fd70b8d82714bffde0e4a6973481f64e2b7f7d69ee0a776b7e17d32e9fa  GoogleMobileAds/10.12.0/GoogleAppMeasurement.xcframework.zip
08603358d510e4adc433947a3d4db1372ec9234205c0d9688393f9776e90a532  GoogleMobileAds/10.12.0/GoogleMobileAds.xcframework.zip
f8b0f43966678b3ee057dc4fd4e344a07312bfbdf6bc2ca96667656eaf3791e5  GoogleMobileAds/10.12.0/GoogleUtilities.xcframework.zip
3d268db693a6eab7b0908d7060e3a25ef8c26e385cdafa817a2f3813b3df0f8c  GoogleMobileAds/10.12.0/UserMessagingPlatform.xcframework.zip
3d0972564ded4c55826a8be3359674d75dda55b0a51586d062c4ce591fe606c3  GoogleMobileAds/10.12.0/nanopb.xcframework.zip
b649ef1585b035e8e0a1b2094f6d21e9655a74ef2e33d2c480026de17b125304  GoogleMobileAds/7.69.0/PromisesObjC.xcframework.zip
```

**Boltive**

```
96506a305e6658f26c619b9210de9ebfc5b58c2e5a1976f0f7aa8528fc7c769a Boltive/Boltive.xcframework.zip
```

**AmazonTAM**

Version 4.9.5:
```
0640578377edd124f9b7de6ff4a6de66877e03e396b30acf91373e775bc159bc AmazonTAM/DTBiOSSDK.xcframework.zip
```
