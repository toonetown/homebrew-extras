require "formula"

class LinkSdks < Formula
  version "1"
  homepage "https://gist.github.com/befe043f8ee85c67ad70"
  url "https://gist.github.com/befe043f8ee85c67ad70.git", :revision => "c5f1c67f"
  head "https://gist.github.com/befe043f8ee85c67ad70.git", :branch => "master"

  skip_clean "bin"

  def install
    chmod 0755, "link-sdks"
    bin.install "link-sdks"
  end
end
