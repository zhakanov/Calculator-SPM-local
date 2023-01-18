#!/bin/bash

set -eo pipefail

xcodebuild -workspace Calculator.xcworkspace \
            -scheme Calculator\ iOS \
            -sdk iphoneos \
            -configuration AppStoreDistribution \
            -destination $PWD/build/Calculator.xcarchive \
            -archivePath $PWD/build/Calculator.xcarchive \
            clean archive | xcpretty
