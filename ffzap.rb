class Ffzap < Formula
    desc "A multithreaded CLI for digital media processing using ffmpeg. If ffmpeg can do it, ffzap can do it - as many files in parallel as your system can handle. "
    homepage "https://github.com/CodeF0x/ffzap"
    version "1.1.2"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.2/ffzap-macos-aarch64.tar.gz"
        sha256 "7486c4958869f1aac2bf60cd67924fad31b8add5d7d500133cd4d0eb54049843"
      elsif Hardware::CPU.intel?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.2/ffzap-macos-x86_64.tar.gz"
        sha256 "71f9ef3f32e5ff192ca54c02c8f5589fc61bc76e5239163a365a4a702d655744"
      end
    end
  
    on_linux do
      url "https://github.com/CodeF0x/ffzap/releases/download/1.1.2/ffzap-linux-x86_64.tar.gz"
      sha256 "4e61bf10b56cf6c116ca622de592d4cbd822e1f6c48972c729b84427c593a2e6"
    end
  
    def install
      bin.install "ffzap"
    end
  
    test do
      assert_match "ffzap #{version}", shell_output("#{bin}/ffzap --version")
    end
  end
  
