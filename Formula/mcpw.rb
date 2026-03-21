class Mcpw < Formula
  desc "Turn any CLI tool or web API into an MCP server without writing code"
  homepage "https://github.com/kapoorsunny/AnythingMCP"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-apple-darwin.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "PLACEHOLDER"
    end
  end

  def install
    bin.install "mcpw"
  end

  test do
    assert_match "mcpw", shell_output("#{bin}/mcpw --version")
  end
end
