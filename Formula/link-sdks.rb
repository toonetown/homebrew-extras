require "formula"

class LinkSdks < Formula
  version "2"
  homepage "https://gist.github.com/befe043f8ee85c67ad70"
  url "https://gist.github.com/befe043f8ee85c67ad70.git", :revision => "c31e23f0"
  head "https://gist.github.com/befe043f8ee85c67ad70.git", :branch => "master"

  skip_clean "bin"

  def install
    chmod 0755, "link-sdks"
    bin.install "link-sdks"
  end
end
