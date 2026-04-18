cask "cyberchef-tauri" do
  version "0.1.5-cyberchef.10.23.0"
  sha256 "3742f9da0ce73bba27ff28cb28d9e53889c5e50fd7eb783cbf2cb2820be773a4"

  url "https://github.com/murarisumit/cyberchef-tauri/releases/download/v#{version}/CyberChef-v#{version}-macos.dmg",
      verified: "github.com/murarisumit/cyberchef-tauri/"
  name "CyberChef"
  desc "CyberChef desktop app packaged with Tauri"
  homepage "https://github.com/murarisumit/cyberchef-tauri"

  app "CyberChef.app"
end
