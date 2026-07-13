class Groundcover < Formula
  desc "CLI with SDK-backed writes and raw webapp endpoint passthrough"
  homepage "https://github.com/paymog/groundcover-cli"
  url "https://github.com/paymog/groundcover-cli.git",
      tag:      "v0.3.0",
      revision: "63569f7d52ed6a9281e176ce52eae4a7f72ce88a"
  version "0.3.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/groundcover-cli/internal/cli.version=#{version}"), "./cmd/groundcover"
  end

  test do
    assert_match "Groundcover CLI", shell_output("#{bin}/groundcover --help")
  end
end
