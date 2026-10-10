# On a new release: bump version, then set sha256 to the zip's `shasum -a 256`.
cask "holdon" do
  version "1.2.0"
  sha256 "127f10d82181979d7f785c9a14e57e3cd776089e0f2f953c8454024624ab6de0"

  url "https://github.com/qarge/HoldOn/releases/download/v#{version}/HoldOn-#{version}.zip"
  name "HoldOn"
  desc "Menu bar app that requires holding Cmd-Q before an app quits"
  homepage "https://github.com/qarge/HoldOn"

  depends_on macos: :sonoma

  app "HoldOn.app"

  uninstall quit: "com.holdon.HoldOn"

  zap trash: "~/Library/Preferences/com.holdon.HoldOn.plist"
end
