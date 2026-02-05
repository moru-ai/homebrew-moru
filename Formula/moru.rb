class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.5.5"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.5.5"
    sha256 cellar: :any_skip_relocation, arm64_linux: "b4a6b38eb502fa9e7426ecc4acd21752fd32bec3aaee852b90c79d987253e015"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "e97ead969bb6d6e73b9a503a335a272fb55d29172f7666cb2cfd84da070e9a01"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "8b9b9c1815fc33be7ffb4002cbe609e91e6f8a2d18898d968ebddfbb93f6de6e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "c66ad8d517f327efef8218feca91555423a00d9e4336a6f4f0e9afa83727eca2"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "ab26085a721160a23540c879d40d10a7bad28cbaa5c1321c47710fd94a980a4a"
    sha256 cellar: :any_skip_relocation, monterey: "00cb2ee5e9df01ff3956934a4d77deecb889f7997cf12c399073f5096b138fd8"
    sha256 cellar: :any_skip_relocation, sequoia: "efc70675b52cc615f52bb00489e22cc3cbc46a7a0b9a1e07036fca3da4e116cc"
    sha256 cellar: :any_skip_relocation, sonoma: "b3d86b6aa40f3fccbbf2c2c1c3c4db43d89bbd68b9385f6a0bca0e8996d162c9"
    sha256 cellar: :any_skip_relocation, ventura: "b68529587ab0b407531ab1487e3e504165ce1a3f25dcf8c7fad93ebc7a4246e9"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0601e47515200a27f95f0886c7b7e9a12ab04dcb9172cf54d1cbaad6f13dff27"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.5/moru-v0.5.5-darwin-arm64"
      sha256 "c5a179477aa9d0df22deff65b8288044e6d2c68cb88d0c4a90ff7ddeaa38f412"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.5/moru-v0.5.5-darwin-x64"
      sha256 "b5edb3fb194e6e6f1a855f02663c3288e3d985b4634eba5f167dc1ba3fbf7faf"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.5/moru-v0.5.5-linux-arm64"
      sha256 "f8dd89c4d35065975154f3c5925f4255d4d7860c3c9cfdf8c2f33e5906235caa"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.5/moru-v0.5.5-linux-x64"
      sha256 "6127feafecd631377381d35e90be95d8e1a5cb239e7e58e5e8ba1eda7239169e"
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
