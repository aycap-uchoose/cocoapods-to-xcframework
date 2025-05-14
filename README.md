# cocoapods-to-xcframework

Build xcframework from CocoaPods.

## Prerequisite

- Install Xcode 14.3.1
- Install CocoaPods 1.12.1
- Install task

## Initialization

- Add pod 'libs name' in Podfile

```sh
pod 'MaterialComponents', '~> 112.0.0'
pod 'MDFTextAccessibility', '~> 112.0.0'
pod 'MDFInternationalization', '~> 112.0.0'
pod 'XLPagerTabStrip', '~> 112.0.0'
pod 'IQKeyboardManagerSwift', '6.5.10'
```

- Install pod

```sh
pod install
```

## Build archive (for Simulator + Device)

```sh
task archive
```

## Convert to .xcframework (for Simulator + Device)

```sh
task xcframework
```

Output:

```sh
xcframework successfully written out to: ./Framework/MaterialComponents.xcframework
xcframework successfully written out to: ./Framework/MDFInternationalization.xcframework
xcframework successfully written out to: ./Framework/MDFTextAccessibility.xcframework
xcframework successfully written out to: ./Framework/XLPagerTabStrip.xcframework
xcframework successfully written out to: ./Framework/IQKeyboardManagerSwift.xcframework
```

## Zip and Checksum

```sh
sh zip.sh
```

Output:

```sh
MaterialComponents Checksum:
d7b83a1bc307dbddb44ecdd0c031752fa26a872e51232fa59ecfc02068b3bc2a
MDFTextAccessibility Checksum:
84f16230ec642eb3fca8f2f9cf0dd60decfb47a454b808fa76a998291e143ec8
MDFInternationalization Checksum:
7f290fecda96e554d630dea855109ce66ed63951ecb1c3391d228e9c75f233a1
XLPagerTabStrip Checksum:
01393950b07da5a840e23b31c22bed7644c0393532fb750b23f1b2b7d8586990
Zipper Checksum:
62839200bd85fa5bf173c7c94b8111c1c47b1e79902f0a27ae2ac65c264ec1fd
IQKeyboardManagerSwift Checksum:
0afbf081a622a94dd79e75a7673f59f0fe2518c6fc155ef1e5fe26da39bbc449
Cluster Checksum:
f9469bb84e0726d12ca8121c5d264da1e96b255e9142006f66643e38c8347bb2
```

## Swift Package

```swift
// swift-tools-version:5.7
import PackageDescription
let package = Package(
    name: "FrameworkName",
    products: [
        .library(
            name: "FrameworkName",
            targets: ["FrameworkName"]
        ),
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "FrameworkName",
            url: "https://github.com/username/repos-name/releases/download/x.y.z/FrameworkName.xcframework.zip",
            checksum: "Checksum"
        )
    ]
)
```