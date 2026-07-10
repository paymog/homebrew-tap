class Incidentio < Formula
  desc "CLI for the incident.io API (Bearer auth, OpenAPI-generated commands)"
  homepage "https://github.com/paymog/incidentio-cli"
  version "0.4.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.4.0/incidentio-darwin-arm64"
      sha256 "062c5e40bde2c7c86df9c3061a220ad2e33adf5000886bce9530a24a73019f25"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.4.0/incidentio-darwin-x64"
      sha256 "d0a2e2799c3b610de1d1c4570296f61499c0024ab256d7f844dda0772ddade07"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.4.0/incidentio-linux-arm64"
      sha256 "c6816a815c779cb001efd136708ecfbc7c95dbee0acad4c6d283bd2a47d581de"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.4.0/incidentio-linux-x64"
      sha256 "796eab55866f88ba6aa10343578b9c9c65a447c2050dced874f4927346adb7f1"
    end
  end

  def install
    bin.install Dir["incidentio-*"].first => "incidentio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/incidentio --version")
  end
end
