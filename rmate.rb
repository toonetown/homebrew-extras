require "formula"

class Rmate < Formula
  homepage "https://github.com/textmate/rmate"
  url "https://github.com/textmate/rmate/archive/v1.5.7.tar.gz"
  sha1 "2f139c88c128b89626da56a00441602e7121be62"

  def install
    bin.install "bin/rmate"
  end
end
