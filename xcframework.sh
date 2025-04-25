FRAMEWORK=$1

xcodebuild -create-xcframework \
  -framework ./archives/ios_devices.xcarchive/Products/Library/Frameworks/${FRAMEWORK}.framework \
  -framework ./archives/ios_simulators.xcarchive/Products/Library/Frameworks/${FRAMEWORK}.framework \
  -output ./Framework/${FRAMEWORK}.xcframework