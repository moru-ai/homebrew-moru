class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.5.3"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.5.3"
    sha256 cellar: :any_skip_relocation, arm64_linux: "2219ff56ad3c20fdc42724d8c029159d4050eb1d375b1014783d0011c5911a3b"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "eaf19bfb0279cea0043f83a988b035f80d7458b16be1b4b9bb104efbda864189"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "5921e4c8ebb3bcd51bbde965bc039ead52e790361d7c90b3195608b4ab8a7a28"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "addb8c839f3829970de0ab54c7fc0578212f3615134116a6b5a86c9a1d34e6bc"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "6823c215bc909e6998a56b42e912d4e5059e17d337a98f5abc28d144df800f96"
    sha256 cellar: :any_skip_relocation, monterey: "8eac71bdd5db907a0f4533c67efb9d160e386873b3ae870b3e3920b1152db620"
    sha256 cellar: :any_skip_relocation, sequoia: "df9d3ef778e567fa64ee4e373128f142ebd0c2e0c1bc68540e1d9fdb107d26f7"
    sha256 cellar: :any_skip_relocation, sonoma: "cf9cdae615fa8e1721f0c43e3797c17c086db06decea05d05aa28f618ad97df2"
    sha256 cellar: :any_skip_relocation, ventura: "c7d6b15cd417e927bfff370ac59827947549f5030bf90c90b39f0745a91e7577"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "b0b7cce29004f1673d4195259bd1bfb1857f4365d3a452c7e9d69c9f9ce25612"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.3/moru-v0.5.3-darwin-arm64"
      sha256 "3b0e8f0999449a26e93a5d49044da1b818b8c1c8d1d740a06c923fa182ba4804"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.3/moru-v0.5.3-darwin-x64"
      sha256 "c4cbe21582c7073abeac66120b4daa482761353ce3f09c094a66aa2095d9920d"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.3/moru-v0.5.3-linux-arm64"
      sha256 "498bf8b96eec1a94aced973011f51571e06c5f38eb1d812897c304caa1dcd520"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.3/moru-v0.5.3-linux-x64"
      sha256 "a11174cee40fb8a5e568098b43029a54824d134a75ac227977ebd7c3c6c13b27"
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
