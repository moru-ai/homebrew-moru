class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.5.1"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.5.1"
    sha256 cellar: :any_skip_relocation, arm64_linux: "6b189183fa5a84dd6f74f214d9c83a038b8db16c2fecc726ba54cd7dfbb1a70a"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "b48cdb6059cbc7abef0b2f1f3743c38ec740f82b46fa600f9643a7c17f102661"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "489c9ef9d988f69e3c33217168b19082686f378186d365827953022ff4959fac"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "3dd39a54ace4ab8b1947719d16cd0d2309693527c230116ee412b640cda084bf"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "8dedaf5ad2ca7aa771a41130791cb17e62cf8e04c92d27e7bc37a0274aa13d72"
    sha256 cellar: :any_skip_relocation, monterey: "7b9f2de5d8d1a9666a1025246e04d011a97c242854191a2d97bd304d82f83793"
    sha256 cellar: :any_skip_relocation, sequoia: "42f6908050b230086aacf5690a9a7d958175aff92b8b883cbc090e3db632f3e6"
    sha256 cellar: :any_skip_relocation, sonoma: "7ff511e91c14fc863d1e70ff0f21377e07ab064fcc5af80acc22be5ff2a4bce2"
    sha256 cellar: :any_skip_relocation, ventura: "e4060e46ae47548e2bfce8f1360181d9f8678133eebdda33198d32450d2ce929"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "76de09d1282ac519ffdd8b0633bcc0703fd37d42454da9b543990a437095001a"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.1/moru-v0.5.1-darwin-arm64"
      sha256 "1b46165d5ab8faabce81a0b95ae180a2a2c9d1934e953624b0754a63b95ba49d"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.1/moru-v0.5.1-darwin-x64"
      sha256 "c6bcf408d6b4555b6a1c53101a8e3207de56dbd3295ad77a0ef6a041f3429648"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.1/moru-v0.5.1-linux-arm64"
      sha256 "05c0bd8a237293db072f10bca5c408b217a6e2e591711c4dce39843828e27048"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.1/moru-v0.5.1-linux-x64"
      sha256 "203ac3907bcc1a518bb255a69b3f8836ae05a1f590ad758a9f6af7bb06bd59b8"
    end
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "moru-v#{version}-darwin-arm64" => "moru"
      else
        bin.install "moru-v#{version}-darwin-x64" => "moru"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "moru-v#{version}-linux-arm64" => "moru"
      else
        bin.install "moru-v#{version}-linux-x64" => "moru"
      end
    end
  end

  test do
    system "#{bin}/moru", "--version"
  end
end
