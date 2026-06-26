class SlackCli < Formula
  desc "Slack workspace tools as a CLI (no daemon, no MCP server process)"
  homepage "https://github.com/paymog/slack-cli"
  url "https://github.com/paymog/slack-cli.git",
      tag:      "v0.2.0",
      revision: "ed6ea666d074327b8479633304aa771d1b5d223d"
  version "0.2.0"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/slack-cli/internal/cli.version=#{version}"), "./cmd/slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --help")
  end
end
