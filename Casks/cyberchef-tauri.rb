cask "cyberchef-tauri" do
  version "0.1.1-cyberchef.10.23.0"
  sha256 "702697039abceb9c5d7883aa2a5e00084489d7f512dd918f6ee3afc6287682b4"

  url "https://github.com/murarisumit/cyberchef-tauri/releases/download/v#{version}/CyberChef-v#{version}-macos.dmg",
      verified: "github.com/murarisumit/cyberchef-tauri/"
  name "CyberChef"
  desc "CyberChef desktop app packaged with Tauri"
  homepage "https://github.com/murarisumit/cyberchef-tauri"

  app "CyberChef.app"
end
