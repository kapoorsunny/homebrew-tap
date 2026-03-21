class Mcpw < Formula
  desc "Turn any CLI tool or web API into an MCP server without writing code"
  homepage "https://github.com/kapoorsunny/AnythingMCP"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-apple-darwin.tar.gz"
      sha256 "6e2369896b9422fe51540d3874167bbbf9ae8df23fb9d776733302a6b518db9f"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-apple-darwin.tar.gz"
      sha256 "701da46f33ab91f7cc5bd3e1ba7d06febbf7f0731df67d7b6dfbfb9f2ee61df4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9dd4100ca13abe2878ebb2a4c8c60bdd8f47a5bd6784c3037988ad3da401b0c0"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "f84d06752e9bf6e8c6b000e0e6ad808850b14fd55e78360b7d8f0cebe5d2231f"
    end
  end

  def install
    bin.install "mcpw"
  end

  test do
    assert_match "mcpw", shell_output("#{bin}/mcpw --version")
  end
end
