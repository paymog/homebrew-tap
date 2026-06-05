class Groundcover < Formula
  desc "CLI with SDK-backed writes and raw webapp endpoint passthrough"
  homepage "https://github.com/paymog/groundcover-cli"
  url "https://github.com/paymog/groundcover-cli.git",
      revision: "5729b8c1a04df174c48d72960a4f688b06f93740"
  version "0.1.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/groundcover-cli/internal/cli.version=#{version}"), "./cmd/groundcover"
  end

  test do
    assert_match "Groundcover CLI", shell_output("#{bin}/groundcover --help")
  end
end
