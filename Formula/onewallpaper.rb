class Onewallpaper < Formula
  desc "Use one image to set continuous wallpaper across monitors"
  homepage "https://github.com/chishui/OneWallpaper"
  license "MIT"
  head "https://github.com/chishui/OneWallpaper.git"

  def install
    system "make", "install", "prefix=#{prefix}"
  end

  test do
    system "false"
  end
end
