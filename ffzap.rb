class Ffzap < Formula
    desc "A multithreaded CLI for digital media processing using ffmpeg. If ffmpeg can do it, ffzap can do it - as many files in parallel as your system can handle. "
    homepage "https://github.com/CodeF0x/ffzap"
    version "1.1.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.0/ffzap-macos-aarch64.tar.gz"
        sha256 "25332585999c62cd370030e38b76449a45214cc879b52e525507362f8c9bdf0a"
      elsif Hardware::CPU.intel?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.0/ffzap-macos-x86_64.tar.gz"
        sha256 "1855d9c67c28baafbc0605b16f8499ed2adf56c17182259b4af4f4e1598db17c"
      end
    end
  
    on_linux do
      url "https://github.com/CodeF0x/ffzap/releases/download/1.1.0/ffzap-linux-x86_64.tar.gz"
      sha256 "80eda8ca32025cbc3452503954837941bdad4e77cb7a681600149c5a6bffd84a"
    end
  
    def install
      bin.install "ffzap"
    end
  
    test do
      assert_match "ffzap #{version}", shell_output("#{bin}/ffzap --version")
    end
  end
  
