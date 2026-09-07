class Keysec < Formula
  desc "A pocket secret vault for your Mac - Keychain-backed CLI with secret rotation"
  homepage "https://github.com/kapoorsunny/keysec"
  version "1.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.2.0/keysec-aarch64-apple-darwin.tar.gz"
      sha256 "ffaf4468d3d0ada5f9f2563cc7747b30b790fd809e87f353385c8e97f15053b5"
    end
    on_intel do
      url "https://github.com/kapoorsunny/keysec/releases/download/v1.2.0/keysec-x86_64-apple-darwin.tar.gz"
      sha256 "9320e6225087838d44a8a0e20e4c12a596554f9427089446ad4625eca1364289"
    end
  end

  def install
    bin.install "keysec"
  end

  test do
    assert_match "keysec", shell_output("#{bin}/keysec help")
  end
end