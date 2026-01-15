class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.1.1"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.1.1"
    sha256 cellar: :any_skip_relocation, arm64_linux: "34bfcf632cdb9cde8eb76d9bdab721fc6f45a9fe4e816c4d8f8da0b7e410d654"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "d263ae56f65ab91b9dd3d69928f9e307dac6f52f02d4f85ba808fe252439df42"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "3a8ab360895a623d98215645f594ccaca75f3dcf96efbf4be9b0150346c3ea4f"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "66fb5ccd727e3df0765f5b4fd53bb46e585f023a24f46502d27d08b1ac544d89"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "95c93d5ab9beebd50f479fbeb2b7f697518c7ec0704f0b167dd5878365ababbf"
    sha256 cellar: :any_skip_relocation, monterey: "2f7707a4a6569851f59e0db2d7a1b080a224427632c0b286da8ee88a81b6c645"
    sha256 cellar: :any_skip_relocation, sequoia: "7a767fdb4aa0c7925d5da68eccec39336d8ac840b55c173036abf9a27a1530fa"
    sha256 cellar: :any_skip_relocation, sonoma: "b464180bac5b9fd1a9ca2f9da765019b31a6a1f5032d46fcf3331ca7414505cd"
    sha256 cellar: :any_skip_relocation, ventura: "f2d174c2ca848b61eacd4a23eaa9421cfc064c22a4093e1b6378e9988ad8a25e"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "d81dc50cb3bd6c41ea2b736d32887228c4cbcfd664172e0d2ecf90b830013a65"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcore%400.1.1/moru-v0.1.1-darwin-arm64"
      sha256 "058e981705fb7ed7df0ade4f145b778dcc73ad80c43d31e3ef9ded0444f20cb5"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcore%400.1.1/moru-v0.1.1-darwin-x64"
      sha256 "04bdf147a4d8f9accae1e74ac7d82e49cc4b65aa1c4e62dd40e9a85e2f23e0d6"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcore%400.1.1/moru-v0.1.1-linux-arm64"
      sha256 "b6dfc0158a79bce8c911d2c15bff89e1b818efe4f6bd3aa0bfe6909613a00606"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcore%400.1.1/moru-v0.1.1-linux-x64"
      sha256 "f450898a2cdd275947859f6731118f78505f4901a576cc07357f182c0d63c5ef"
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
