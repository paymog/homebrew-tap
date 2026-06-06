class Blacksmith < Formula
  desc "CLI for blacksmith.sh's dashboard backend (cookie auth, HAR-derived commands)"
  homepage "https://github.com/paymog/blacksmith-cli"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/paymog/blacksmith-cli/releases/download/v0.1.0/bs-darwin-arm64"
      sha256 "8ab8e3336114e7cd95d1da639b26a2ef1ba493d50c74baf5262c51bd9adacbff"
    end
    on_intel do
      url "https://github.com/paymog/blacksmith-cli/releases/download/v0.1.0/bs-darwin-x64"
      sha256 "a0f97eab56e9dc631a8d679d89eabbbdf02dabc88ee0ea1a403197084f57deed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/paymog/blacksmith-cli/releases/download/v0.1.0/bs-linux-arm64"
      sha256 "55e47a37a0c4452f4787e1eec763c47076861cd53aab1379ead0964fd4784d68"
    end
    on_intel do
      url "https://github.com/paymog/blacksmith-cli/releases/download/v0.1.0/bs-linux-x64"
      sha256 "df15a41ec5dd5de79a6bc367165b2b44e19cc0fb191afd7ec18f7deb7c6f3998"
    end
  end

  def install
    bin.install Dir["bs-*"].first => "bs"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/bs --version")
  end
end
