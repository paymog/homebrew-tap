class Cloudzero < Formula
  desc "CLI for the CloudZero API (key auth, hand-crafted + HAR-generated commands)"
  homepage "https://github.com/paymog/cloudzero-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/cloudzero-cli/releases/download/v0.1.0/cloudzero-darwin-arm64"
      sha256 "2ad49aeacddeb69c616871934e4171c969ba7b7f7b7b88a7b4fdbc728671feaa"
    end
    on_intel do
      url "https://github.com/paymog/cloudzero-cli/releases/download/v0.1.0/cloudzero-darwin-x64"
      sha256 "9b21190c86ae072742ce169462b8304ea57b62edf89364a86b813fd5d7365ef3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/cloudzero-cli/releases/download/v0.1.0/cloudzero-linux-arm64"
      sha256 "82d94dc511471ed7ee9dc04691645a6cc4979c02fb0792cd05a84595bde2bf2e"
    end
    on_intel do
      url "https://github.com/paymog/cloudzero-cli/releases/download/v0.1.0/cloudzero-linux-x64"
      sha256 "1da1a51f2cdec133605285012cadf935523ea8e14a74cb0c1b5b9e2c1e4fc4b4"
    end
  end

  def install
    bin.install Dir["cloudzero-*"].first => "cloudzero"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/cloudzero --version")
  end
end
