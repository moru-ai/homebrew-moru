class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.3.4"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.3.4"
    sha256 cellar: :any_skip_relocation, arm64_linux: "becd5cc6d9d41b603fcce1175db8972b995ba6e7fe370e190eb4ecefbad81b61"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "093416614a11171e60ce92309d022376039b6cab38e91a858733af609807400c"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "e5f7890f4de909a1639539d58e157746f113beeacd8ac855e1020e1dae1e2cf3"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "95de3104b4de18e26ad60b9133d7a657d6e063124b6728ca03a15289240af870"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "58fda4dab543668891d89d7ac010c7c890e72ad0b105fdc23d6b27f50b346ce6"
    sha256 cellar: :any_skip_relocation, monterey: "53a275fbaa2164af3953f2da7781c940feb9d523b430accb654ad120c0c5ba42"
    sha256 cellar: :any_skip_relocation, sequoia: "afc31d5cfec58b0e334e6b72226c5150b280122e9298ab45706e1a4c1805e97d"
    sha256 cellar: :any_skip_relocation, sonoma: "e87882265c0712526d8abb8a5e9ff567c4687995bbf8102c77fa7ff392df923c"
    sha256 cellar: :any_skip_relocation, ventura: "09c86685a6dcf4016233b7f71d5907d428869da1dbac470a61c150dc2caf293a"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "523d309e09deaf47a413d6f4b8db4aebc043c70b392d80d0c87999445c613351"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-darwin-arm64"
      sha256 "4950a40b2adb1d883311035e49a92097c3630bfc614ac97d0416321e2d64bf82"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-darwin-x64"
      sha256 "f5d18d175cf7503f6457a96dbe1797cbf0a5837950d581212564b9148c8a7b36"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-linux-arm64"
      sha256 "bc3f2bef1ddbf8e88556b0782254b20b6866ee7146da7ea4cd6aa3caf6edb121"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.3.4/moru-v0.3.4-linux-x64"
      sha256 "5137973911207492d1a8af1568c7e36b36fa2b1ae764da20061811b6c9e6f76a"
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
