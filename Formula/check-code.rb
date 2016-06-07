require "formula"

class CheckCode < Formula
  version "1"
  homepage "https://gist.github.com/toonetown/7b10f70daf0b647d671c08cb2e2740b6"
  url "https://gist.github.com/7b10f70daf0b647d671c08cb2e2740b6.git", :revision => "6464f35b"
  head "https://gist.github.com/7b10f70daf0b647d671c08cb2e2740b6.git", :branch => "master"

  skip_clean "bin"

  def install
    chmod 0755, "check-code"
    bin.install "check-code"
  end
end
