cask "cyberchef-tauri" do
  version "0.1.4-cyberchef.10.23.0"
  sha256 "7d2b501c99dd6971cdb182015d861cefb17723eec969a5d3fbee5fcc6ce8cee3"

  url "https://github.com/murarisumit/cyberchef-tauri/releases/download/v#{version}/CyberChef-v#{version}-macos.dmg",
      verified: "github.com/murarisumit/cyberchef-tauri/"
  name "CyberChef"
  desc "CyberChef desktop app packaged with Tauri"
  homepage "https://github.com/murarisumit/cyberchef-tauri"

  app "CyberChef.app"
end
