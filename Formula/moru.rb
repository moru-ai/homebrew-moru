class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.3.4"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.3.4"
    sha256 cellar: :any_skip_relocation, arm64_linux: "371fe1f46661d60fc558783087778b96a072f7464d7344219e89d9ad6eb21431"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "f0e287e686d457da33788630bccdc5d82ca0db532ee46a7088f3d18aaa4a305d"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "76a0e1098902632476abfb15b92519d0bc3e08572986181dfa3f93b81414aeba"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "30cc29d4cb8289317d6c6b09bbc25bc442729d51ce41373caf98895e4d530581"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "71fe1c05017ebbe2aa4fd8cf8d3051c29b0202119b8945e0cf2c5f78ff7161e7"
    sha256 cellar: :any_skip_relocation, monterey: "2d06fccce643a40f9e4a046f2e74bf5d5836faf76ba050f91a0c281929cfd500"
    sha256 cellar: :any_skip_relocation, sequoia: "40cd705c45a0e0ee5323518c0058a35f8cb2fc47c24a0ffc4a7753397a966979"
    sha256 cellar: :any_skip_relocation, sonoma: "ab18469a1347605e7f7bff3b0933896dc85cebf160ccabcb9ff7f6e44e917222"
    sha256 cellar: :any_skip_relocation, ventura: "676145ae3d12cef03c75b45af73a8a7d2db6712c3ba0fa25e018c51a34b87268"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "44ad13c47653487d1eeb16178949ae597cf290308701c087998151faf822e7f0"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-darwin-arm64"
      sha256 "ebb0657df08ac7dfbff55db37e90b0436cb743f96b760b5a736951806c49db4f"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-darwin-x64"
      sha256 "b28b519fa84fbbc4e49877a9e1bf91ddfa24e44605d8a3754058a21926da4894"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-linux-arm64"
      sha256 "7adbb92b31406584e1ecd8c8880d4eafe15a1d42d264d5e4c5779ba4c9a6c2c5"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-linux-x64"
      sha256 "6db377a778775e23fae2088cf9035cef015d4e3098a8ae3d697d00dfe88f0ea2"
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
