class SlackCli < Formula
  desc "Slack workspace tools as a CLI (no daemon, no MCP server process)"
  homepage "https://github.com/paymog/slack-cli"
  url "https://github.com/paymog/slack-cli.git",
      tag:      "v0.3.5",
      revision: "e1d9b4dc6e7d20e1a842fa07097a80bf2a93c463"
  version "0.3.5"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/slack-cli/internal/cli.version=#{version}"), "./cmd/slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --help")
  end
end
