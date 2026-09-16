# On a new release: bump version, then set sha256 to the zip's `shasum -a 256`.
cask "holdon" do
  version "1.0.0"
  sha256 "fd981d4fe0c902130ff8c9bd0dabeceb2cc2897b9c6204fd2240ec5efaed3462"

  url "https://github.com/qarge/HoldOn/releases/download/v#{version}/HoldOn-#{version}.zip"
  name "HoldOn"
  desc "Menu bar app that requires holding Cmd-Q before an app quits"
  homepage "https://github.com/qarge/HoldOn"

  depends_on macos: :sonoma

  app "HoldOn.app"

  uninstall quit: "com.holdon.HoldOn"

  zap trash: "~/Library/Preferences/com.holdon.HoldOn.plist"
end
