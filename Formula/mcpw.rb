class Mcpw < Formula
  desc "Turn any CLI tool or web API into an MCP server without writing code"
  homepage "https://github.com/kapoorsunny/AnythingMCP"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v1.1.0/mcpw-aarch64-apple-darwin.tar.gz"
      sha256 "0e7a1e67e019366132579f7215bd356a34d32fce6782679cd37eef7161bfc162"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v1.1.0/mcpw-x86_64-apple-darwin.tar.gz"
      sha256 "ab3656a4811c3a710d7db9bfff0bd6b4be1d24b95df9d7aa27da3b5338cb9eb7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v1.1.0/mcpw-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "373a5d841d54bb8d52ed5c1fd8288985a6348c1318efb1e3ede2b2df72cee94b"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v1.1.0/mcpw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4b7354fe59a50bde6d90e3a10759a066f9ac6312470f8dc1f3b3b7ffebcb5d34"
    end
  end

  def install
    bin.install "mcpw"
  end

  test do
    assert_match "mcpw", shell_output("#{bin}/mcpw --version")
  end
end
