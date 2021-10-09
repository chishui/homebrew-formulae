class Onewallpaper < Formula
  desc "Use one image to set continuous wallpaper across monitors"
  homepage "https://github.com/chishui/OneWallpaper"
  url "https://github.com/chishui/OneWallpaper.git", tag: "1.0.0", revision: "c5ac04849506e768aed5c66f72233fcda2455507"
  version "0.0.1"
  license "MIT"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/one-wallpaper" "import Foundation\n"
  end
end
