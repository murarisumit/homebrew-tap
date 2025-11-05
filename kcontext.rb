class Kcontext < Formula
  desc "Simple Kubernetes kubeconfig switcher CLI"
  homepage "https://github.com/murarisumit/kcontext"
  version "0.0.1"
  
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/murarisumit/kcontext/releases/download/v0.0.1/kcontext-darwin-amd64"
      sha256 "de9ed65107d7ab2b855f605b69b7e15e1a60941b3c1dbd0e160be6b9fa036857"
    else
      url "https://github.com/murarisumit/kcontext/releases/download/v0.0.1/kcontext-darwin-arm64"
      sha256 "9a99d11af45f2645b857c61dcd54282739263ac6662561d7cb68138a797461fe"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/murarisumit/kcontext/releases/download/v0.0.1/kcontext-linux-amd64"
      sha256 "f1bcc9b539ffd9992a5beada922635ca6970bbde9fedd060fa81eacb610cd189"
    else
      url "https://github.com/murarisumit/kcontext/releases/download/v0.0.1/kcontext-linux-arm64"
      sha256 "4c984bf33dd14a5902d4f3d664c3c6504ffc25879ac91da87cecc5aea1f96bab"
    end
  end

  def install
    bin.install "kcontext-darwin-amd64" => "kcontext" if Hardware::CPU.intel? && OS.mac?
    bin.install "kcontext-darwin-arm64" => "kcontext" if Hardware::CPU.arm? && OS.mac?
    bin.install "kcontext-linux-amd64" => "kcontext" if Hardware::CPU.intel? && OS.linux?
    bin.install "kcontext-linux-arm64" => "kcontext" if Hardware::CPU.arm? && OS.linux?
  end

  def caveats
    <<~EOS
      To enable kcontext, add this one line to your shell config:

      Bash (~/.bashrc):
        eval "$(kcontext --init bash)"

      Zsh (~/.zshrc):
        eval "$(kcontext --init zsh)"

      Fish (~/.config/fish/config.fish):
        kcontext --init fish | source

      Then reload your shell and use: kcontext <kubeconfig-name>
    EOS
  end

  test do
    system "#{bin}/kcontext", "--version"
    system "#{bin}/kcontext", "--list"
  end
end
