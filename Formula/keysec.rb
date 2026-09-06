class Keysec < Formula
  desc "A pocket secret vault for your Mac - Keychain-backed CLI with secret rotation"
  homepage "https://github.com/kapoorsunny/keysec"
  version "1.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.1.0/keysec-aarch64-apple-darwin.tar.gz"
      sha256 "8fc37c0bf1b2c02b02c30027120052cb7c01cfd8ee0778729eaef08743ec1e4e"
    end
    on_intel do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.1.0/keysec-x86_64-apple-darwin.tar.gz"
      sha256 "8375d130938fd1e13a98efb877521574be7586113af901c02825287bfe8f0ac1"
    end
  end

  def install
    bin.install "keysec"
  end

  test do
    assert_match "keysec", shell_output("#{bin}/keysec help")
  end
end