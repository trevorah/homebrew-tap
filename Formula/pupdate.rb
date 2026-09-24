class Pupdate < Formula
  desc "Update cores and firmware for the Analogue Pocket"
  homepage "https://github.com/mattpannella/pupdate"
  url "https://github.com/mattpannella/pupdate/releases/download/5.8.0/pupdate_mac.zip"
  version "5.8.0"
  sha256 "5b5e404311d456765905069e1af0b4bbfabb75e8eb67ee3621b1c3d69ae96a12"
  license "MIT"

  depends_on :macos

  def install
    bin.install "pupdate"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/pupdate --version", 1)
  end
end
