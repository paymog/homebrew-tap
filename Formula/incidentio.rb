class Incidentio < Formula
  desc "CLI for the incident.io API (Bearer auth, OpenAPI-generated commands)"
  homepage "https://github.com/paymog/incidentio-cli"
  version "0.2.1"

  on_macos do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.1/incidentio-darwin-arm64"
      sha256 "6d30b67eb7c7df937127127350a62a79f1bab1470d5aca877f2cc94810e1246b"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.1/incidentio-darwin-x64"
      sha256 "52747a5d119c40ca8c2357b531863894c817766ad9be2700caee24659171ab02"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.1/incidentio-linux-arm64"
      sha256 "48007a4c4be00e5b97848cef651b228e5f27a4377cc8185a5b1330fd60f866c0"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.1/incidentio-linux-x64"
      sha256 "321c38248d44e56232814760ec0c948e82d2a180cb7fbc6f58a22ec1b1d69989"
    end
  end

  def install
    bin.install Dir["incidentio-*"].first => "incidentio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/incidentio --version")
  end
end
