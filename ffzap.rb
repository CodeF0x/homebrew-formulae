class Ffzap < Formula
    desc "A multithreaded CLI for digital media processing using ffmpeg. If ffmpeg can do it, ffzap can do it - as many files in parallel as your system can handle. "
    homepage "https://github.com/CodeF0x/ffzap"
    version "0.3.2"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/CodeF0x/ffzap/releases/download/0.3.2/ffzap-macos-aarch64.tar.gz"
        sha256 "7c3e0f6b9f3c41b7d30913e61c865d6e668d4da22ac5b4942f01fed31b240cc8"
      elsif Hardware::CPU.intel?
        url "https://github.com/CodeF0x/ffzap/releases/download/0.3.2/ffzap-macos-x86_64.tar.gz"
        sha256 "175fe94d98793add1ff48ac43a5c625653f1da151638f35a6e7ba9e863f16ae6"
      end
    end
  
    on_linux do
      url "https://github.com/CodeF0x/ffzap/releases/download/0.3.2/ffzap-linux-x86_64.tar.gz"
      sha256 "eedb1bcfa20e85d4cc8544baa7c6528a61073b00dd96129517b95d5a6e825a5a"
    end
  
    def install
      bin.install "ffzap"
    end
  
    test do
      assert_match "ffzap #{version}", shell_output("#{bin}/ffzap --version")
    end
  end
  