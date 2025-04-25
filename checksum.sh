FRAMEWORK=$1

echo "${FRAMEWORK} Checksum:"
swift package compute-checksum ./Framework/Zip/${FRAMEWORK}.xcframework.zip