# On a new release: bump version, then set sha256 to the zip's `shasum -a 256`.
cask "holdon" do
  version "1.1.0"
  sha256 "9b9ffdf5097562675e6454a5e1010c799abbc5877f1c7448be510e993b15c16c"

  url "https://github.com/qarge/HoldOn/releases/download/v#{version}/HoldOn-#{version}.zip"
  name "HoldOn"
  desc "Menu bar app that requires holding Cmd-Q before an app quits"
  homepage "https://github.com/qarge/HoldOn"

  depends_on macos: :sonoma

  app "HoldOn.app"

  uninstall quit: "com.holdon.HoldOn"

  zap trash: "~/Library/Preferences/com.holdon.HoldOn.plist"
end
