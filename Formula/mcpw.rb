class Mcpw < Formula
  desc "Turn any CLI tool or web API into an MCP server without writing code"
  homepage "https://github.com/kapoorsunny/AnythingMCP"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-apple-darwin.tar.gz"
      sha256 "043b31b7de22b07420b20f3ef89211d352b17822e6de9ed0b35fe2879de12758"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-apple-darwin.tar.gz"
      sha256 "fc7a8d21ae6a2f03faa4e1e479b9e155dcba961f2244239574e567d4011238bb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5256dec4cb562f7d47f315f2a9e52c612849b0164aad1bd4e49e2216fa063bc3"
    end

    on_intel do
      url "https://github.com/kapoorsunny/AnythingMCP/releases/download/v#{version}/mcpw-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e257c81812121d0954f6099e9c71ed617884dcfa011b55cc52729b5bae88a9a2"
    end
  end

  def install
    bin.install "mcpw"
  end

  test do
    assert_match "mcpw", shell_output("#{bin}/mcpw --version")
  end
end
