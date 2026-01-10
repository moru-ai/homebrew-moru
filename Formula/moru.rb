class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.3.3"

  # Bottle block will be added by build-bottles.yml workflow

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai/cli%40#{version}/moru-v#{version}-darwin-arm64"
      sha256 "e74b0d43b19cc7eac6ebfd988a35783025488e91e1be69bc0ce29be1b5c01416"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai/cli%40#{version}/moru-v#{version}-darwin-x64"
      sha256 "cb3850203e55a435004e92c5704d4504614c6a6e44a39ad6f7459f538f9a052c"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai/cli%40#{version}/moru-v#{version}-linux-arm64"
      sha256 "ee399b0da5b684a5179fc9aa29c523216115f70e1a6cf279df3b8f63f12ee4f2"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai/cli%40#{version}/moru-v#{version}-linux-x64"
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
