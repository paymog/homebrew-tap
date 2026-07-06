class Groundcover < Formula
  desc "CLI with SDK-backed writes and raw webapp endpoint passthrough"
  homepage "https://github.com/paymog/groundcover-cli"
  url "https://github.com/paymog/groundcover-cli.git",
      tag:      "v0.1.1",
      revision: "65d6a586f0eea4d0f372998f5f4ccbfd7aba1862"
  version "0.1.1"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/groundcover-cli/internal/cli.version=#{version}"), "./cmd/groundcover"
  end

  test do
    assert_match "Groundcover CLI", shell_output("#{bin}/groundcover --help")
  end
end
