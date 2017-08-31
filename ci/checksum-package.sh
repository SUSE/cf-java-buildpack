#!/usr/bin/env bash

set -e

pushd package-built

buildpack=$(ls java-buildpack-*.zip)

sha1sum=$(sha1sum "${buildpack}" | cut -c-7)

basename=${buildpack%.*}

cp "${buildpack}" ../package-tagged/"${basename}-${sha1sum}.zip"
