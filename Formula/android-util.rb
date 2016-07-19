class AndroidUtil < Formula
  desc "Set of utilities for android development"
  homepage "https://github.com/toonetown/android-util/"
  url "https://github.com/toonetown/android-util/archive/v1.4.tar.gz"
  sha256 "541c073013f77262970fdad12c31593499d33fd8eac1a91e0ded7c339001b4f0"

  head "https://github.com/toonetown/android-util.git", :branch => "master"

  depends_on "toonetown/android/android-sdk"

  skip_clean "bin"

  def install
    prefix.install "bin"
  end

  test do
    system "true"
  end
end
