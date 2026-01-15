class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"
  version "0.5.4"

  bottle do
    root_url "https://github.com/moru-ai/homebrew-moru/releases/download/bottles-v0.5.4"
    sha256 cellar: :any_skip_relocation, arm64_linux: "18c3eb04579bfc676daa13822547d5b50fad762c2d6253ae86b13125363f8a4d"
    sha256 cellar: :any_skip_relocation, arm64_monterey: "99b9fff1bb8205b3fac499428fbc6e1c999b5141820f2213ba344dde94d1656b"
    sha256 cellar: :any_skip_relocation, arm64_sequoia: "ff17340cb80a371a452361ba4b9019256b27997f03db317a8b16952b61a910e0"
    sha256 cellar: :any_skip_relocation, arm64_sonoma: "f2848ac4724373c3cb978e961457b22dff97700fd0fa8329f1e7c9a05434f508"
    sha256 cellar: :any_skip_relocation, arm64_ventura: "fcb90aa8721baed9a1a8ca4c94ddc524636d4069e7c613a01566806c0e837406"
    sha256 cellar: :any_skip_relocation, monterey: "8731872596860d8a9deb27a28a795cfb7cd36265cf6fb1bffa00087774e467e3"
    sha256 cellar: :any_skip_relocation, sequoia: "928798e8826e6ca7d3d4d837f56aa0e4ef79d178e28f9f3baca0c95de7b2d12d"
    sha256 cellar: :any_skip_relocation, sonoma: "07d1d8a4337ff0b0e0dcdbbf26d43a649600c0d75a640948500c8883f410fd5a"
    sha256 cellar: :any_skip_relocation, ventura: "e532798dc55cd06fbdbc171f2a259813bae1dccdb1f1e6ed0347188906bccbc8"
    sha256 cellar: :any_skip_relocation, x86_64_linux: "8e5cf3e213dc7ee660f10d4eea5d4966ec05376d941bfe7f8015607690aadefe"
  end

  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.4/moru-v0.5.4-darwin-arm64"
      sha256 "df2cd3376e71a9cace1dda8d4b6c4498ef6e6443cc9f3655914265ee1f8f6402"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.4/moru-v0.5.4-darwin-x64"
      sha256 "1b820462bc4c44375c35c01c7389cc7b5e5e506d0506e70f810911733d7377bd"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.4/moru-v0.5.4-linux-arm64"
      sha256 "df27ed8930cdebcccad00a78a86b388266c706d094b22510b5ac1dfeed754cce"
    else
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai%2Fcli%400.5.4/moru-v0.5.4-linux-x64"
      sha256 "03329c6841c3902a359a5ec1a6f09952d4fba9ccce9f944ffb674a10f6debf3e"
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
