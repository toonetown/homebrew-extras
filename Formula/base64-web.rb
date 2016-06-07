require "formula"

class Base64Web < Formula
  version "1"
  homepage "https://gist.github.com/toonetown/90b65f630ff51f570ff893b3637c5b17"
  url "https://gist.github.com/90b65f630ff51f570ff893b3637c5b17.git", :revision => "daa198ad"
  head "https://gist.github.com/90b65f630ff51f570ff893b3637c5b17.git", :branch => "master"

  skip_clean "bin"

  def install
    chmod 0755, "base64"
    bin.install "base64"
  end
end
