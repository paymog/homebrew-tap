class Incidentio < Formula
  desc "CLI for the incident.io API (Bearer auth, OpenAPI-generated commands)"
  homepage "https://github.com/paymog/incidentio-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.1.0/incidentio-darwin-arm64"
      sha256 "faadd6d0689db55632ed10a57bbb1a8fa1021bf46096a04d114b87e4fa22b67a"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.1.0/incidentio-darwin-x64"
      sha256 "3c7b263c2766f277b31b894963a2040c13278394de425070c92fc8525a91e8bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.1.0/incidentio-linux-arm64"
      sha256 "1e12ed403a73d6f415fb294467569c3b5e785c668cc274a75eb2b6863766f645"
    end
    on_intel do
      url "https://github.com/paymog/incidentio-cli/releases/download/v0.1.0/incidentio-linux-x64"
      sha256 "91e13004aad9d87e5eb8cc05d8fb583ebf12e6df8115585cc7cc805c19e1deb6"
    end
  end

  def install
    bin.install Dir["incidentio-*"].first => "incidentio"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/incidentio --version")
  end
end
