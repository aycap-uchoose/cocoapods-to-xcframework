# material-components-ios-spm

## Initialization

```sh
pod install
```

## Build archive (for Simulator + Device)

```sh
sh build.sh
```

## Convert to .xcframework (for Simulator + Device)

```sh
sh xcframework.sh
```

Output:

```sh
xcframework successfully written out to: ./Framework/MaterialComponents.xcframework
xcframework successfully written out to: ./Framework/MDFInternationalization.xcframework
xcframework successfully written out to: ./Framework/MDFTextAccessibility.xcframework
```

## Zip and Checksum

```sh
sh zip.sh
```

Output:

```sh
MaterialComponents checksum:
d7b83a1bc307dbddb44ecdd0c031752fa26a872e51232fa59ecfc02068b3bc2a
MDFTextAccessibility checksum:
84f16230ec642eb3fca8f2f9cf0dd60decfb47a454b808fa76a998291e143ec8
MDFInternationalization checksum:
7f290fecda96e554d630dea855109ce66ed63951ecb1c3391d228e9c75f233a1
```