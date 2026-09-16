# On a new release: bump version, then set sha256 to the dmg's `shasum -a 256`.
cask "holdon" do
  version "1.0.0"
  sha256 "a7cf2005c89994149660c46ab3ce906cfb8eb23e8aae37eae40fec85aa9b5809"

  url "https://github.com/qarge/HoldOn/releases/download/v#{version}/HoldOn-#{version}.dmg"
  name "HoldOn"
  desc "Menu bar app that requires holding Cmd-Q before an app quits"
  homepage "https://github.com/qarge/HoldOn"

  depends_on macos: :sonoma

  app "HoldOn.app"

  uninstall quit: "com.holdon.HoldOn"

  zap trash: "~/Library/Preferences/com.holdon.HoldOn.plist"
end
