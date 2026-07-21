class Incidentio < Formula
  desc "CLI for the incident.io API (Bearer auth, OpenAPI-generated commands)"
  homepage "https://github.com/paymog/incidentio-cli"
  version "0.6.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.6.0/incidentio-darwin-arm64"
      sha256 "2c131f0320654e62c4e75e25e1c2057effc21597de0c2156be6efa2a22b678a0"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.6.0/incidentio-darwin-x64"
      sha256 "479ad257a094178a661465509d1de8a5f72916ef21b24d114d37cbd59d0b59fe"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.6.0/incidentio-linux-arm64"
      sha256 "7ce85bb28d6b3acb51afcefd0da562e5f595009e84d3623d525c5350f78c7285"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.6.0/incidentio-linux-x64"
      sha256 "33522fff8e962c9ad181d85503e8e1b3d5b12c8a50742715a16361e5bb01193e"
    end
  end

  def install
    bin.install Dir["incidentio-*"].first => "incidentio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/incidentio --version")
  end
end
