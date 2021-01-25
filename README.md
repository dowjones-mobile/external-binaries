# External Binaries

A place to dump your external binaries that are dependencies to the WSJ-iOS app!

## XCFrameworks
Starting with Swift Package Manager and Xcode 11, XCFrameworks are Apple's Go-To source to avoid fat binaries. 

There are two scripts that create XCFrameworks for you - either from static libraries (.a files mostly) or from static Frameworks (.framework folder).

Pull these scripts into the directory that you need and execute it. The only dependency is that the framework you want converted is in the directory.

### Checksums

**GoogleIMA**
```
dd7c063625812961daec38c74169666699b5c2b8796951dc2cd18421955a8d8a  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleIMA/3.11.4/GoogleInteractiveMediaAds.xcframework.zip
5646200f213c354b9723ad519ccd5921cdf4269153e6dcff81c6fe1b492adb07  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleIMA/3.12.1/GoogleInteractiveMediaAds.xcframework.zip
bedbc4913c2e20805f1ec90718eb88936e23a7fa20291f033876a3598f339c1d  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleIMA/3.13.0/GoogleInteractiveMediaAds.xcframework.zip
d1ba9107b92f1b3cd9d8761e0647d2d38bce6635e188bf96cfe6371f54f536d7  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleIMA/3.9.0/GoogleInteractiveMediaAds.xcframework.zip
```

**GoogleMobileAds**
For the latest version (with xcframework support) please use: https://developers.google.com/admob/ios/download and add it to this repo including sha256 checksum for version keeping
```
9b5845f6855c106345b09cc227431d93a903729db055a8143f47461019096d5d  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.30.0-1/GoogleMobileAds.xcframework.zip
53ecc2390b2b3e9a328370f3cdd130f1b49c8c22e87ef08f7f4286d24b07e2bb  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.61.0/GoogleMobileAds.xcframework.zip
6e2786370116cb5868a2917f989c6d3581265b6a258b9a33f34455c0b256557c  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.64.0/GoogleMobileAds.xcframework.zip
7a3037a187f4ea4f530acac0540432484a8138ff437af7304ee38b4f834fcf56  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.68.0/GoogleAppMeasurement.xcframework.zip
ef03c93e912aceaf04b21aa9ebc9a75aac0ff410018d64d7ce203f60052d18b2  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.68.0/GoogleMobileAds.xcframework.zip
5f77a886938e1d3e6012de86b96d1645c7ecd62b626c83fb34447f18e8edd8d1  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.68.0/GoogleUtilities.xcframework.zip
4e83b74f617b8966e502559415a99bcc9f8af5e4d56ba52edb79c23be7ee3ef0  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.68.0/PromisesObjC.xcframework.zip
e38c31d98744581faba31e3e02127de28af8c9aa78cce3f0e80bee364bf9cfd6  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.68.0/UserMessagingPlatform.xcframework.zip
9f8f5dda33e6527412270233150e6ba676c747d65218186bf9c0d8c938a53937  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.68.0/nanopb.xcframework.zip
04f25a0abad7cab71c61e60b1ce4495681a4f24dbe791d5217c36ccfe24c3a81  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/GoogleMobileAds.xcframework.zip
592dd89f6c0b875c20dc1a8d34646972595e5291ce4c1591c79efa88c13d1d19  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/GoogleUtilities.xcframework.zip
71d2ae281518b075237d3aa62d15efaf990a5f676e5e40ba8efdffe79eec223d  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/PromisesObjC.xcframework.zip
510e2c34e2ccceac418d6521e7d783ce15cf6abd2c3ab5fcb083090482b275cf  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/UserMessagingPlatform.xcframework.zip
91f57ea982bca87806d5198d20a5b0f695688627c2af705a8ba16350f77aabe1  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/nanopb.xcframework.zip
d0563bd030de6c4160a5a1a6956bd352d1353de0b16f1fe679edc23df0a2c735  https://github.com/dowjones-mobile/external-binaries/raw/master/GoogleMobileAds/7.69.0/GoogleAppMeasurement.xcframework.zip
```
