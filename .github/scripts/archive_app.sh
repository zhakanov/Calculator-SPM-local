#!/bin/bash

set -eo pipefail

xcodebuild -workspace Calculator.xcworkspace \
            -scheme Calculator\ iOS \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -destination generic/platform=iOS \
            -archivePath $PWD/build/Calculator.xcarchive \
            clean archive | xcpretty
