class Moru < Formula
  desc "CLI for managing Moru sandbox templates"
  homepage "https://github.com/moru-ai/sdks"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai/cli%400.3.3/moru-v0.3.3-darwin-arm64"
      sha256 "e74b0d43b19cc7eac6ebfd988a35783025488e91e1be69bc0ce29be1b5c01416"

      def install
        bin.install "moru-v0.3.3-darwin-arm64" => "moru"
      end
    end

    on_intel do
      url "https://github.com/moru-ai/sdks/releases/download/%40moru-ai/cli%400.3.3/moru-v0.3.3-darwin-x64"
      sha256 "cb3850203e55a435004e92c5704d4504614c6a6e44a39ad6f7459f538f9a052c"

      def install
        bin.install "moru-v0.3.3-darwin-x64" => "moru"
      end
    end
  end

  test do
    system "#{bin}/moru", "--version"
  end
end
