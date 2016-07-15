class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2016.1.1411799"

  if MacOS.prefer_64_bit?
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86_64/p4"
    sha256 "85153a60d75d84b172320e0d9348d0da67979f24a2e63650e5febf005afac778"
  else
    url "https://www.perforce.com/downloads/perforce/r16.1/bin.macosx105x86/p4"
    sha256 "ddc3272687038b1b507017f6a702e9bdf41b8faf6d5b89ca27e0fc9b1879ad4f"
  end

  bottle :unneeded

  def install
    bin.install "p4"
  end
end