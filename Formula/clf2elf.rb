class Clf2elf < Formula
  desc "Convert log files from CLF to ELF using gawk"
  homepage "https://github.com/toonetown/clf2elf/"
  url "https://github.com/toonetown/clf2elf/archive/v1.3.tar.gz"
  sha256 "99ef2299111e3f52b6f01ea134edb4536b4e68271237760e40d34a33d38a170e"

  head "https://github.com/toonetown/clf2elf.git", :branch => "master"

  depends_on "gawk"

  skip_clean "bin"

  def install
    prefix.install "bin"
    prefix.install "share"
  end

  test do
    system "true"
  end
end
