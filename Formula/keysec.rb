class Keysec < Formula
  desc "A pocket secret vault for your Mac - Keychain-backed CLI with secret rotation"
  homepage "https://github.com/kapoorsunny/keysec"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.0.0/keysec-aarch64-apple-darwin.tar.gz"
      sha256 "cef3fe758d87b803862a55440b9cd8b8e1e5f9568c848d5b6c888ef129f22e92"
    end
    on_intel do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.0.0/keysec-x86_64-apple-darwin.tar.gz"
      sha256 "7d775dd28763d10ea612c3292b46123c7cee3ea1790f3429eb250b74ed68cec6"
    end
  end

  def install
    bin.install "keysec"
  end

  test do
    assert_match "keysec", shell_output("#{bin}/keysec help")
  end
end