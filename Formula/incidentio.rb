class Incidentio < Formula
  desc "CLI for the incident.io API (Bearer auth, OpenAPI-generated commands)"
  homepage "https://github.com/paymog/incidentio-cli"
  version "0.3.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.3.0/incidentio-darwin-arm64"
      sha256 "989cacf18f33abf23eb5d1a2af56259c809568ccc9fa19d1877efb26715e4a37"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.3.0/incidentio-darwin-x64"
      sha256 "4a9250655353722fd788deb017c43f8dc84c2d1b6d2c613923d3af08b4435fd8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.3.0/incidentio-linux-arm64"
      sha256 "a94adc8c24c4d2cd30e885868cb62f74e63ec1b16f375543267359bba9ba524d"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.3.0/incidentio-linux-x64"
      sha256 "381e5a0d76823dcf1a34f67d51a3cbd7e0f9b477628e042da85cec17289acb47"
    end
  end

  def install
    bin.install Dir["incidentio-*"].first => "incidentio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/incidentio --version")
  end
end
