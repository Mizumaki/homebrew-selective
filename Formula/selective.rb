class Selective < Formula
  desc "Interactive single-select filter for the shell"
  homepage "https://github.com/Mizumaki/selective"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Mizumaki/selective/releases/download/v0.1.0/selective-0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "67fb466a97bac2d4599cca5a3e93f7735094ac5e268d1c840a8bcd8a66017d5a"
    end

    on_intel do
      url "https://github.com/Mizumaki/selective/releases/download/v0.1.0/selective-0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "d898405cffbdc0093ee0a88b2a9c6959550bb878ee0eacf251bed0bfe8ca5863"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Mizumaki/selective/releases/download/v0.1.0/selective-0.1.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "93a9e2667031fb65d9de00f91ac437c6a89ada913d431265ed842f9449312610"
    end
  end

  def install
    bin.install "selective"
  end

  test do
    assert_match "selective", shell_output("#{bin}/selective --help")
  end
end
