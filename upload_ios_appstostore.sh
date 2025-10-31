#!/bin/bash
set -e  # exit on first error

# -----------------------------
# CONFIG
# -----------------------------
# List all your build flavors/schemes here
FLAVORS=( star moon )

# Path to your iOS folder containing Gemfile
IOS_DIR="ios"

# Path to your Fastfile relative to IOS_DIR
FASTFILE="$IOS_DIR/fastlane/Fastfile"

# Desired Ruby version (Fastlane compatible)
RUBY_VERSION="3.3.4"

# -----------------------------
# STEP 1: Install rbenv and Ruby
# -----------------------------
if ! command -v rbenv &>/dev/null; then
  echo "Installing rbenv..."
  brew install rbenv
fi

# Initialize rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

# Install desired Ruby if not installed
if ! rbenv versions | grep -q "$RUBY_VERSION"; then
  echo "Installing Ruby $RUBY_VERSION..."
  rbenv install "$RUBY_VERSION"
fi

# Set local Ruby version for this script
rbenv local "$RUBY_VERSION"
ruby -v
echo "🔹 Cleaning Flutter project..."
flutter clean
flutter pub get

# -----------------------------
# STEP 2: Install Bundler & Gems
# -----------------------------
cd "$IOS_DIR"
gem install bundler
rm -rf Pods Podfile.lock
pod repo update
pod install --repo-update

bundle install
echo "🔹 Verifying Xcode path..."
sudo xcode-select -s /Applications/Xcode.app
xcode-select -p

# -----------------------------
# STEP 3: Build each flavor
# -----------------------------
for FLAVOR in "${FLAVORS[@]}"; do
  echo "===================================="
  echo " Building and uploading: $FLAVOR "
  echo "===================================="

  # Optional: set custom IPA name
  IPA_NAME="MyApp_${FLAVOR}.ipa"

  # Run Fastlane lane
  BUNDLE_GEMFILE="Gemfile" \
  bundle exec fastlane ios release scheme:"$FLAVOR" ipa_name:"$IPA_NAME"

done

echo "✅ All flavors built successfully!"
