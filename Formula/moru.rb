class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.5.2"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.5.2"
    sha256 cellar: :any_skip_relocation, arm64_linux: "26f88ca1682053d72919099072ce3f5f18b641a0ae623d6a0aefdf017a29c835"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "d642a5f92beb5f878f1a1b8d2470aa255502a8c5d8f8e68a7cc031ac769ec0af"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "35cc3a6b27d3ef8f70c936ba04a3538f220bb8c30b40713be5277be2d755db77"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "e72fd7def05395b747ebc1c0d7360e0da489755f81c389288fbc4d4c138382ad"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "7223606d41d818a3099fe7c97d3c6561aa12cae409d7e9e1927e37df38c46cf0"
    sha256 cellar: :any_skip_relocation, monterey: "caf159095bbf8095ea1fcfc205c3927b464737926718e4984aebb468eddf36da"
    sha256 cellar: :any_skip_relocation, sequoia: "fd10dd78297ce11e3eb9017d09fee5edb6a894485a53c12903f2f75a3ecda104"
    sha256 cellar: :any_skip_relocation, sonoma: "684f260016a92b553fe5c783022dfe2ab327f5fced0402081fa1bdf26f6cab0f"
    sha256 cellar: :any_skip_relocation, ventura: "f0b6180542d6ae4f4a37de4c607886e58e51a2da7112bd9a72e12fc2901fbdab"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "0517fc0d984783dae625e3a1c78c70c50618813eb33da0ae7ceac8334c4070fe"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.2/moru-v0.5.2-darwin-arm64"
      sha256 "bf873331c9b553e1d9a8844d6e558a881a3dede37af98bf99574072a64505501"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.2/moru-v0.5.2-darwin-x64"
      sha256 "adb88c48195a6f14035a74efcf7e4893669541ea74df2ea629e1fb0e2c430482"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.2/moru-v0.5.2-linux-arm64"
      sha256 "34704c0ab919871d52a7d32e43bf86b828d1db0e02d599878d3b945997ba7aa7"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.2/moru-v0.5.2-linux-x64"
      sha256 "c6908de849618f41d745985d49d39b6dfafa2609cbb6b1a3737dbeee886c5ce4"
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
