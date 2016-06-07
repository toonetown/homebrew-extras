require "formula"

class Webserver < Formula
  version "1"
  homepage "https://gist.github.com/toonetown/6603e97bb64c52fa9590"
  url "https://gist.github.com/6603e97bb64c52fa9590.git", :revision => "690d8ab1"
  head "https://gist.github.com/6603e97bb64c52fa9590.git", :branch => "master"

  skip_clean "bin"

  def install
    chmod 0755, "webserver"
    bin.install "webserver"
  end
end
