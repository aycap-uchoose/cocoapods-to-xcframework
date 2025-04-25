xcodebuild archive \
  -workspace material-components-ios-spm.xcworkspace \
  -scheme material-components-ios-spm \
  -sdk iphoneos \
  -archivePath ./archives/ios_devices \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES

xcodebuild archive \
  -workspace material-components-ios-spm.xcworkspace \
  -scheme material-components-ios-spm \
  -sdk iphonesimulator \
  -archivePath ./archives/ios_simulators \
  SKIP_INSTALL=NO \
  BUILD_LIBRARY_FOR_DISTRIBUTION=YES
