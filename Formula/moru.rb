class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.3.3"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.3.3"
    sha256 cellar: :any_skip_relocation, arm64_linux: "82f8734df21e61ac217746a3db37d3c5c2e421fd93fe2350af454566c2f8e3b9"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "65fa2b48c8e5975777a75b521bbb0a3a74585f9d1606764cf137f35d9552786a"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "1b25757e9eb0e1aedbc077827559f6a17349335ae24a638389a3bf0724a947d0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "14060bb5599c8372e5f944faccd19922f2b32720877323573fbfac10eaf26527"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "345a6c035cf3fa83249838baf0a4798d330eb59a008d0bead48c6517ffce08e0"
    sha256 cellar: :any_skip_relocation, monterey: "b4de765a9d29d152aec12b94c2ab0661464161aeb9504b6229932f193bbe3fdf"
    sha256 cellar: :any_skip_relocation, sequoia: "5ff4116ee6d734ce56d526c4a01d4b3bda73732db6e7cf29fdc23a9e262df264"
    sha256 cellar: :any_skip_relocation, sonoma: "25b247f62a92e736a767464318b6f39a730ebf0d08a46989afc6599f2201d3e0"
    sha256 cellar: :any_skip_relocation, ventura: "7f6dacf8bc6bb81000fb36c87f9a5c31837112ac2b3b9b6a1842d514dc99f0dc"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a92385e5877fd654dd44fdea17959b3676a0d515937f33d1541de9a5cb1c89f8"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.3/moru-v0.3.3-darwin-arm64"
      sha256 "e74b0d43b19cc7eac6ebfd988a35783025488e91e1be69bc0ce29be1b5c01416"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.3/moru-v0.3.3-darwin-x64"
      sha256 "cb3850203e55a435004e92c5704d4504614c6a6e44a39ad6f7459f538f9a052c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.3/moru-v0.3.3-linux-arm64"
      sha256 "ee399b0da5b684a5179fc9aa29c523216115f70e1a6cf279df3b8f63f12ee4f2"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.3/moru-v0.3.3-linux-x64"
      sha256 "a7dc3eb25f613ee7c8b9299a121d1316ea53053a9afe10ebefb63138f99176af"
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
