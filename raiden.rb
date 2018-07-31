class Raiden < Formula
  desc "Raiden Network"
  homepage "https://github.com/raiden-network/homebrew-raiden"
  url "https://github.com/raiden-network/raiden/releases/download/v0.4.1/raiden-v0.4.1-macOS.zip"
  version "v0.4.1"
  sha256 "f16e3b29e1996ccd59af498a2a951f9720a5fc2a70e7b02f6c9d9ee24886e8a2"

  depends_on :macos => :el_capitan

  def install
    # Homebrew extracts the file after download but keeps the extension - WTF?
    mv "raiden-v0.4.1-macOS.zip", "raiden"
    bin.install "raiden"
  end

  test do
    system "#{bin}/raiden", "version"
  end
end
