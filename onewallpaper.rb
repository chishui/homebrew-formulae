class Onewallpaper < Formula
  desc "Use one image to set continuous wallpaper across monitors"
  homepage "https://github.com/chishui/OneWallpaper"
  url "https://github.com/chishui/OneWallpaper.git", tag: "1.0.1", revision: "0575fb3bd24bf856cd4429fee6f3cc4dd611241a"
  version "1.0.1"
  license "MIT"

  depends_on :macos

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "#{bin}/one-wallpaper" "import Foundation\n"
  end
end
