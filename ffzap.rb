class Ffzap < Formula
    desc "A multithreaded CLI for digital media processing using ffmpeg. If ffmpeg can do it, ffzap can do it - as many files in parallel as your system can handle. "
    homepage "https://github.com/CodeF0x/ffzap"
    version "1.0.0"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.0.0/ffzap-macos-aarch64.tar.gz"
        sha256 "67f6e20a40b050b1c44e4ca491ab8c5272dc8c4ac9d30c561a72eaedb1e04828"
      elsif Hardware::CPU.intel?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.0.0/ffzap-macos-x86_64.tar.gz"
        sha256 "d6a348c5b98fe9d55a23587ca59ea7fec3d268ce31ab59e3aa05ed338e3a9798"
      end
    end
  
    on_linux do
      url "https://github.com/CodeF0x/ffzap/releases/download/1.0.0/ffzap-linux-x86_64.tar.gz"
      sha256 "466681f3f3bf32cd45ea0075430b63ed552b46906d3c0ae659f25df50ed002a8"
    end
  
    def install
      bin.install "ffzap"
    end
  
    test do
      assert_match "ffzap #{version}", shell_output("#{bin}/ffzap --version")
    end
  end
  