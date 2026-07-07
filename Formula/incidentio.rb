class Incidentio < Formula
  desc "CLI for the incident.io API (Bearer auth, OpenAPI-generated commands)"
  homepage "https://github.com/paymog/incidentio-cli"
  version "0.2.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.0/incidentio-darwin-arm64"
      sha256 "f8eb60af75361448b72fc9a7110d28d9160a8fd3aa562923c63b1f518e55b7b6"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.0/incidentio-darwin-x64"
      sha256 "d8dd78beabae15d2b76ebd7ad7b1fe69abfddcd899d0e586364e58dab36991bd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.0/incidentio-linux-arm64"
      sha256 "314e21acc873daf086aa114b1a6f9c0e9bf183abeaf64f4d79da08f7e89af3a1"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.2.0/incidentio-linux-x64"
      sha256 "8f5e7389c89051821dd9471fc0b12daa0d8c4e309786fe2915b7149574e3112d"
    end
  end

  def install
    bin.install Dir["incidentio-*"].first => "incidentio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/incidentio --version")
  end
end
