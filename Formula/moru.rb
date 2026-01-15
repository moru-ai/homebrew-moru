class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.5.0"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.5.0"
    sha256 cellar: :any_skip_relocation, arm64_linux: "b8114d2e2ab7568757594921bdc27233e8f754762ab07a496eb3f43ab4849668"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "480aa57800be9e12285c3226bf9c2f316464de6640e1f1d6cce221fb27b1f0a6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "f6d106469aa5f3de4c2a4c97c2bd7459e8b830099397b7452f5d68fce2675d8e"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "da9a64959aebf209a3110d55d02e4aba9f6c5bad28609dbe1d6e35ccb49491e7"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "e1487a7aec84a38799a548b7b2e226b9b0eba5d33ab96be629778291fcff35c8"
    sha256 cellar: :any_skip_relocation, monterey: "2978b4e5acacf4dc3536a8e956f963048cabcc80759a76c673fd8bc39c8b7fa9"
    sha256 cellar: :any_skip_relocation, sequoia: "5a2dd5b1182b8de7eaae018c55412379f91b59fa2c314bb6733a9f13d69dd112"
    sha256 cellar: :any_skip_relocation, sonoma: "5edd76eb03ab68ae3ffba77f5c4f2bd4a74442d774aaf0eca5c5065c77d18895"
    sha256 cellar: :any_skip_relocation, ventura: "97a1797b2d26a6a26aa34bb89c32f9dd7e782a5112d80e34bfa03511e6d2f954"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "f537ef00d34f84f5b8235ee21770b444b51a55481a766f7a9762be5ac9ca2864"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.0/moru-v0.5.0-darwin-arm64"
      sha256 "b39270bc0ec3043bda7a42d4d545dc1f35a0b19b26d60bf58271122b8e468ba1"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.0/moru-v0.5.0-darwin-x64"
      sha256 "5dc460303925f7b19df32d030e94084a8e464db7d9da0b101ebcf17756300003"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.0/moru-v0.5.0-linux-arm64"
      sha256 "97a2cc324f30cfa4ec443ac8667a34c335561c6bb7ab44cf62dcc8461ede1374"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.0/moru-v0.5.0-linux-x64"
      sha256 "6e67221def6606b900387010f78ca57476807b271b518f4e5ee30f65d45cd25c"
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
