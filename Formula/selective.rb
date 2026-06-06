class Selective < Formula
  desc "Interactive single-select filter for the shell"
  homepage "https://github.com/Mizumaki/selective"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/Mizumaki/selective/releases/download/v0.2.0/selective-0.2.0-aarch64-apple-darwin.tar.gz"
      sha256 "782439dca90d9de8dcf140468b09e3743b3bc8da2d45dde63cb4240a54759166"
    end

    on_intel do
      url "https://github.com/Mizumaki/selective/releases/download/v0.2.0/selective-0.2.0-x86_64-apple-darwin.tar.gz"
      sha256 "d8fabfc3ccf4b23ac73888b32490ca9066fcd530493a7478b513f866606a99b0"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/Mizumaki/selective/releases/download/v0.2.0/selective-0.2.0-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9cb4cd3f3a13057587437f8a672fb41afa451c966b40186087986cfc8705c74f"
    end
  end

  def install
    bin.install "selective"
  end

  test do
    assert_match "selective", shell_output("#{bin}/selective --help")
  end
end
