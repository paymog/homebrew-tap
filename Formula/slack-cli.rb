class SlackCli < Formula
  desc "Slack workspace tools as a CLI (no daemon, no MCP server process)"
  homepage "https://github.com/paymog/slack-cli"
  url "https://github.com/paymog/slack-cli.git",
      tag:      "v0.3.3",
      revision: "9c72a442222ca377cb526e9a4f6d362db0fb6263"
  version "0.3.3"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/slack-cli/internal/cli.version=#{version}"), "./cmd/slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --help")
  end
end
