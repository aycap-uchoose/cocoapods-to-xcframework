xcodebuild -create-xcframework \
  -framework ./archives/ios_devices.xcarchive/Products/Library/Frameworks/MaterialComponents.framework \
  -framework ./archives/ios_simulators.xcarchive/Products/Library/Frameworks/MaterialComponents.framework \
  -output ./Framework/MaterialComponents.xcframework

xcodebuild -create-xcframework \
  -framework ./archives/ios_devices.xcarchive/Products/Library/Frameworks/MDFInternationalization.framework \
  -framework ./archives/ios_simulators.xcarchive/Products/Library/Frameworks/MDFInternationalization.framework \
  -output ./Framework/MDFInternationalization.xcframework

xcodebuild -create-xcframework \
  -framework ./archives/ios_devices.xcarchive/Products/Library/Frameworks/MDFTextAccessibility.framework \
  -framework ./archives/ios_simulators.xcarchive/Products/Library/Frameworks/MDFTextAccessibility.framework \
  -output ./Framework/MDFTextAccessibility.xcframework
