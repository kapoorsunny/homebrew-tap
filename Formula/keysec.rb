class Keysec < Formula
  desc "A pocket secret vault for your Mac - Keychain-backed CLI with secret rotation"
  homepage "https://github.com/kapoorsunny/keysec"
  version "1.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.3.0/keysec-aarch64-apple-darwin.tar.gz"
      sha256 "555b21aa44948e20f2157c968ee1f5931d03073cf95280d7d1a380ea50fe729d"
    end
    on_intel do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.3.0/keysec-x86_64-apple-darwin.tar.gz"
      sha256 "7ac9509487ebc2c1ad93e1614d66e6f8493e533cd245315879151719b76568bb"
    end
  end

  def install
    bin.install "keysec"
  end

  test do
    assert_match "keysec", shell_output("#{bin}/keysec help")
  end
end