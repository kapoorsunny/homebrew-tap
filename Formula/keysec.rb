class Keysec < Formula
  desc "A pocket secret vault for your Mac - Keychain-backed CLI with secret rotation"
  homepage "https://github.com/kapoorsunny/keysec"
  version "1.0.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.0.1/keysec-aarch64-apple-darwin.tar.gz"
      sha256 "8914f6cfb5d1053fbbcb93776d22e53f182e00b23acbf4131b50841109df87aa"
    end
    on_intel do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.0.1/keysec-x86_64-apple-darwin.tar.gz"
      sha256 "4d3f264f89659f2a49065e2f88028b8ae89e5113c444ebb0a3ac6137c3653f9f"
    end
  end

  def install
    bin.install "keysec"
  end

  test do
    assert_match "keysec", shell_output("#{bin}/keysec help")
  end
end