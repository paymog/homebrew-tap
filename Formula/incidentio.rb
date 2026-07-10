class Incidentio < Formula
  desc "CLI for the incident.io API (Bearer auth, OpenAPI-generated commands)"
  homepage "https://github.com/paymog/incidentio-cli"
  version "0.5.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.5.0/incidentio-darwin-arm64"
      sha256 "edadb4d9668db22e36936c33f6747d4a8233433881c9f35f0ab311a9f2ce7d4f"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.5.0/incidentio-darwin-x64"
      sha256 "03123c2dc7df7132a7d60e2d660d49cdf4d8838ff6e380ce262f37c23b7d4e48"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.5.0/incidentio-linux-arm64"
      sha256 "1b656838a7024880810c25480cb1c5dd4650ea8353a64ba3f0e0b46c722bfd4a"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.5.0/incidentio-linux-x64"
      sha256 "bcd06db6e4d0491b435448e7cf984828a2a2a0964f6c5a20d2b54b4b6786f04a"
    end
  end

  def install
    bin.install Dir["incidentio-*"].first => "incidentio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/incidentio --version")
  end
end
