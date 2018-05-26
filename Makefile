PREFIX?=/usr/local

PROD_NAME=SwiftCLIToolbox

build:
	swift build --disable-sandbox -c release -Xswiftc -static-stdlib

build-for-linux:
	swift build --disable-sandbox -c release

test: xcode
	set -o pipefail && xcodebuild -scheme SwiftCLIToolbox-Package -enableCodeCoverage YES clean build test | xcpretty

lint:
	swiftlint

update:
	swift package update

clean:
	swift package clean

xcode:
	swift package generate-xcodeproj

