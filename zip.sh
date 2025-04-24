zip -r ./Framework/MaterialComponents.xcframework.zip ./Framework/MaterialComponents.xcframework
zip -r ./Framework/MDFTextAccessibility.xcframework.zip ./Framework/MDFTextAccessibility.xcframework
zip -r ./Framework/MDFInternationalization.xcframework.zip ./Framework/MDFInternationalization.xcframework

echo "MaterialComponents checksum:"
swift package compute-checksum ./Framework/MaterialComponents.xcframework.zip
echo "MDFTextAccessibility checksum:"
swift package compute-checksum ./Framework/MDFTextAccessibility.xcframework.zip
echo "MDFInternationalization checksum:"
swift package compute-checksum ./Framework/MDFInternationalization.xcframework.zip