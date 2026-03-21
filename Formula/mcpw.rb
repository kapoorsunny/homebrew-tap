class Mcpw < Formula
  desc "Turn any CLI tool or web API into an MCP server without writing code"
  homepage "https://github.com/kapoorsunny/AnythingMCP"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-apple-darwin.tar.gz"
      sha256 "04d740455c5242679fd52490064a5d8ab269f6c96a7135767f4e6b948bfc14ea"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-apple-darwin.tar.gz"
      sha256 "68dfd1a0337da39a5420946308e971705f5d1582b9f398bd874f3cb27f845746"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af9a48e3336f67b7f10481f5c5285ba8ddf7872acc4576221504deee2b05d363"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a61cd81a6a690a569ad5a8090394ba8c756f63d963651bf75395c6bf5f5d5a75"
    end
  end

  def install
    bin.install "mcpw"
  end

  test do
    assert_match "mcpw", shell_output("#{bin}/mcpw --version")
  end
end
