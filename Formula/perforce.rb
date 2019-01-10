class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2016.1.1411799"

  url "https://cdist2.perforce.com/perforce/r18.2/bin.macosx1010x86_64/p4"
  sha256 "75635d11a92191154edf24796ed5d822f09160025af2f7e3ae915b7aa40d0b2c"

  bottle :unneeded

  def install
    bin.install "p4"
  end

  test do
    system "true"
  end
end
