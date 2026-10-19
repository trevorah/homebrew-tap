class Pupdate < Formula
  desc "Update cores and firmware for the Analogue Pocket"
  homepage "https://github.com/mattpannella/pupdate"
  url "https://github.com/mattpannella/pupdate/releases/download/5.9.0/pupdate_mac.zip"
  sha256 "f8c5e8534b892825f555e3aadeac210ab33fe15d58f62fcb8e983910382ecddc"
  license "MIT"

  depends_on :macos

  def install
    bin.install "pupdate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pupdate --version", 1)
  end
end
