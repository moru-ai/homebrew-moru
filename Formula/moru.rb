class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.4.0"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.4.0"
    sha256 cellar: :any_skip_relocation, arm64_linux: "26a12695c885420bd6129b046684ba6f1e9276f36af7a8e2aa5404ddccf9ae8d"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "829c298e1fcc7c327e70712e5e27f9a83912f346ccd959d48da4479beb25c96f"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "6282ffa5a5763a258967dc672d8259ee6782e7176bb10bd1a18f115a7583ef03"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "98aa503785e409b3c787014501267ce091e702b2d4daeefdc544095373921c14"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "cdd205f129d8770e7f0ef23cd318c4bc739d359e5ade087f6d052a2a777d4079"
    sha256 cellar: :any_skip_relocation, monterey: "7a547526d446411ea86d917a0d1bacc395351a1a5e6f18b746b46ebb23b5b928"
    sha256 cellar: :any_skip_relocation, sequoia: "782879ad573ecfc2672da413ccbd240fe4745b27b071eca3d5b352ea8ccc8bd5"
    sha256 cellar: :any_skip_relocation, sonoma: "9b852a28d8fb96eca0e7f3ece60d07bb4bdf11159ed5b7fdf750ef5420b890f3"
    sha256 cellar: :any_skip_relocation, ventura: "d93a63954fadbbe2991f397738fa2c14c51b7831db395fcaeceab354352c3e09"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "57f005b56dab04ab08e5568f5297f8d5b7b3c46e927420159b3766736201d1ca"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.4.0/moru-v0.4.0-darwin-arm64"
      sha256 "a98b300d5271ed14cccec94327a05dba4370bb59e450e8ad8cce82fe6449b007"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.4.0/moru-v0.4.0-darwin-x64"
      sha256 "3f4afb5176854ed8984ffc214a1f9196f184101655b8afb555f59b065d3c4ed1"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.4.0/moru-v0.4.0-linux-arm64"
      sha256 "603608ff8fe6c68ee3e90d383b7beef307a62e169e3d519e8a77abec3c117eec"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.4.0/moru-v0.4.0-linux-x64"
      sha256 "c79fd28f13a32879fc37e1cefb359305c2da81b55767f2d0eb75c57570816e3a"
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
