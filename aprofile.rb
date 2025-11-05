class Aprofile < Formula
  desc "Simple AWS profile switcher CLI"
  homepage "https://github.com/murarisumit/aprofile"
  version "1.0.0"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/murarisumit/aprofile/releases/download/v#{version}/aprofile-darwin-amd64"
      sha256 "" # Will be filled automatically by Homebrew when you release
    else
      url "https://github.com/murarisumit/aprofile/releases/download/v#{version}/aprofile-darwin-arm64"
      sha256 "" # Will be filled automatically by Homebrew when you release
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/murarisumit/aprofile/releases/download/v#{version}/aprofile-linux-amd64"
      sha256 "" # Will be filled automatically by Homebrew when you release
    else
      url "https://github.com/murarisumit/aprofile/releases/download/v#{version}/aprofile-linux-arm64"
      sha256 "" # Will be filled automatically by Homebrew when you release
    end
  end

  def install
    bin.install Dir["aprofile-*"].first => "aprofile"
  end

  def caveats
    <<~EOS
      To enable aprofile, add this one line to your shell config:

      Bash (~/.bashrc):
        eval "$(aprofile --init bash)"

      Zsh (~/.zshrc):
        eval "$(aprofile --init zsh)"

      Fish (~/.config/fish/config.fish):
        aprofile --init fish | source

      Then reload your shell and use: aprofile <profile-name>
    EOS
  end

  test do
    system "#{bin}/aprofile", "--version"
    system "#{bin}/aprofile", "--list"
  end
end