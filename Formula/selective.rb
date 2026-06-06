class Selective < Formula
  desc "Interactive single-select filter for the shell"
  homepage "https://github.com/Mizumaki/selective"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Mizumaki/selective/releases/download/v1.0.0/selective-1.0.0-aarch64-apple-darwin.tar.gz"
      sha256 "5f0e093b6e14c9a84352676d00eba38f366910ea638841200a18cef883d9c6f1"
    end

    on_intel do
      url "https://github.com/Mizumaki/selective/releases/download/v1.0.0/selective-1.0.0-x86_64-apple-darwin.tar.gz"
      sha256 "a3fdb9f63322f62490fa73f803c769766af0d215b3696e167dd54e45f9aa7151"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Mizumaki/selective/releases/download/v1.0.0/selective-1.0.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "19cf4a0f7aae19a8eaf05e55b6ca6a57ad37c1defe75d8175d75caa6474f5ddc"
    end
  end

  def install
    bin.install "selective"
  end

  test do
    assert_match "selective", shell_output("#{bin}/selective --help")
  end
end
