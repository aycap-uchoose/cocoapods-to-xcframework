FRAMEWORK=$1

zip -r ./Framework/Zip/${FRAMEWORK}.xcframework.zip ./Framework/${FRAMEWORK}.xcframework

echo "${FRAMEWORK} Checksum:"
swift package compute-checksum ./Framework/Zip/${FRAMEWORK}.xcframework.zip