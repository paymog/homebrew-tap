class SlackCli < Formula
  desc "Slack workspace tools as a CLI (no daemon, no MCP server process)"
  homepage "https://github.com/paymog/slack-cli"
  url "https://github.com/paymog/slack-cli.git",
      tag:      "v0.3.8",
      revision: "62b34033effa0036ae775e398fa2ab9f9f2ec0f5"
  version "0.3.8"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w -X github.com/paymog/slack-cli/internal/cli.version=#{version}"), "./cmd/slack-cli"
  end

  test do
    assert_match "slack-cli", shell_output("#{bin}/slack-cli --help")
  end
end
