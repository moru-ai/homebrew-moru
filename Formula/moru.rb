class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.3.5"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.3.5"
    sha256 cellar: :any_skip_relocation, arm64_linux: "d7902c6f1e0d3eb3f6e450826aeebb13d8a7778ba6b887dfd9f0c2169e72a453"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "cc45d8658b0b6810f1931f0681f498955a5289b447a38630ae64e31844840ff6"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "30fdfbc9e6d165c8f4b61f9988d96773e69772b0cbb687335f11d53e57818a53"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "4512de4e87b860c359af41b90f3c3620f8188c3fa860cd7702c6c562efed4430"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "893b8e1a3f3f7c601f15422e690fa8e5751d0aa839029a1493be27df51ee35e9"
    sha256 cellar: :any_skip_relocation, monterey: "c733a842b53afde7b5dcdf269bd3a408b95aa8b3bcd5e3fb1579c1049a4f5294"
    sha256 cellar: :any_skip_relocation, sequoia: "afe9af4d7326574f6f1aecaefdf74415937f675bd7c9bb754ad66e8b2723ba72"
    sha256 cellar: :any_skip_relocation, sonoma: "58c82d7e2f5280e4be78e0fb384bb56205bf01ec2808d41ef452d65b0ef3fbf4"
    sha256 cellar: :any_skip_relocation, ventura: "419490c5018de8ceb73dc56f74606a61ad5619cde47d468ddd72b62977e71d0f"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "a153679fee3e157ddfcfb601d2e568002121c47575db676f79c2e82da36a37d0"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.5/moru-v0.3.5-darwin-arm64"
      sha256 "171a185b912378432e32f6b245971101e95a2608226b7ab96a4338befc87a24a"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.5/moru-v0.3.5-darwin-x64"
      sha256 "cb7b614a4f422718a0ad6cf4ebceb31d30816742ee1665626766d9baeb702863"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.5/moru-v0.3.5-linux-arm64"
      sha256 "baed1f812a13b1c67176bedca47b433d8a4b9e8dbc1f98edba72fa2a4a53c4c9"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.5/moru-v0.3.5-linux-x64"
      sha256 "ee4942bf48d670418a29c0405d40425f486db863d639b476a259837600648978"
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
