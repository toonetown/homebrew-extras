class Perforce < Formula
  desc "Revision control system"
  homepage "http://www.perforce.com/"
  version "2018.2.1751184"

  url "https://cdist2.perforce.com/perforce/r18.2/bin.macosx1010x86_64/p4"
  sha256 "fe327976f003ff2a2cc0c81c88e7b08a915609ad15a9c6cf343d885847100af0"

  bottle :unneeded

  def install
    bin.install "bin.macosx1010x86_64" => "p4"
  end

  test do
    system "true"
  end
end
