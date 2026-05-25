cask "macfusegui" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.35"
  sha256 arm: "961d45bede25eaa306cbdeaf0cb19914dbe90c96c07b51cac12f68ab01edfe95", intel: "7a5366589422566f4104a0f4a8198653498ecae90c0be0a7865f81b7ae3f5f50"

  url "https://github.com/ripplethor/macfuseGUI/releases/download/v#{version}/macfuseGui-v#{version}-macos-#{arch}.dmg",
      verified: "github.com/ripplethor/macfuseGUI/"
  name "macfuseGui"
  desc "SSHFS GUI for macOS using macFUSE"
  homepage "https://www.macfusegui.app/"

  depends_on macos: ">= :ventura"

  app "macFUSEGui.app"

  caveats <<~EOS
    This app is unsigned and not notarized.
    If macOS blocks launch, run:
      xattr -dr com.apple.quarantine "/Applications/macFUSEGui.app"
  EOS
end
