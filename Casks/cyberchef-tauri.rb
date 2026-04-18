cask "cyberchef-tauri" do
  version "0.1.4-cyberchef.10.23.0"
  sha256 "df36caa8a3da5d3f1398c04f8d77c5ab90982d24f9cb0c9ad027bea69bc719a1"

  url "https://github.com/murarisumit/cyberchef-tauri/releases/download/v#{version}/CyberChef-v#{version}-macos.dmg",
      verified: "github.com/murarisumit/cyberchef-tauri/"
  name "CyberChef"
  desc "CyberChef desktop app packaged with Tauri"
  homepage "https://github.com/murarisumit/cyberchef-tauri"

  app "CyberChef.app"
end
