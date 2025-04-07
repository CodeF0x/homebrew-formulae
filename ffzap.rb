class Ffzap < Formula
    desc "A multithreaded CLI for digital media processing using ffmpeg. If ffmpeg can do it, ffzap can do it - as many files in parallel as your system can handle. "
    homepage "https://github.com/CodeF0x/ffzap"
    version "1.1.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.1/ffzap-macos-aarch64.tar.gz"
        sha256 "8441a4bb1dbb7e186b31d3a63c5ae963549f85cb679f2c9d389250e0a9723671"
      elsif Hardware::CPU.intel?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.1/ffzap-macos-x86_64.tar.gz"
        sha256 "04adf416de2dcb2df5deb1502a224ec7b66de6d9fdfd41535c91baee5b3538e8"
      end
    end
  
    on_linux do
      url "https://github.com/CodeF0x/ffzap/releases/download/1.1.1/ffzap-linux-x86_64.tar.gz"
      sha256 "999306336e4c7e50dc9010119da0d09a457ba6070ba76b1cd8b868ab5c4adb54"
    end
  
    def install
      bin.install "ffzap"
    end
  
    test do
      assert_match "ffzap #{version}", shell_output("#{bin}/ffzap --version")
    end
  end
  
