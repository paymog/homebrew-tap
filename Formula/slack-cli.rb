class SlackCli < Formula
  desc "Slack workspace tools as a CLI (no daemon, no MCP server process)"
  homepage "https://github.com/paymog/slack-cli"
  url "https://github.com/paymog/slack-cli.git",
      tag:      "v0.3.4",
      revision: "d560e3209569d5af72d4ad5031444acfd49ab59a"
  version "0.3.4"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/slack-cli/internal/cli.version=#{version}"), "./cmd/slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --help")
  end
end
