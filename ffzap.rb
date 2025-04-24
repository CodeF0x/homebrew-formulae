class Ffzap < Formula
    desc "A multithreaded CLI for digital media processing using ffmpeg. If ffmpeg can do it, ffzap can do it - as many files in parallel as your system can handle. "
    homepage "https://github.com/CodeF0x/ffzap"
    version "1.1.1"
  
    on_macos do
      if Hardware::CPU.arm?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.2/ffzap-macos-aarch64.tar.gz"
        sha256 "ac8bbaeeb0036420d3555c7df9ea27c570ed78be337de3db34c225fc622c5c16"
      elsif Hardware::CPU.intel?
        url "https://github.com/CodeF0x/ffzap/releases/download/1.1.2/ffzap-macos-x86_64.tar.gz"
        sha256 "2039c36bbfe393020b1d9889e3020f00113e7561a1f902ac7735912c8689c005"
      end
    end
  
    on_linux do
      url "https://github.com/CodeF0x/ffzap/releases/download/1.1.2/ffzap-linux-x86_64.tar.gz"
      sha256 "1b0c7217782b06f32fb927b57d4857cd2634d8b8b34c9d6ed734671e23369f28"
    end
  
    def install
      bin.install "ffzap"
    end
  
    test do
      assert_match "ffzap #{version}", shell_output("#{bin}/ffzap --version")
    end
  end
  
