class AppengineUtil < Formula
  desc "Some appengine utility scripts"
  homepage "https://github.com/toonetown/appengine-util/"
  url "https://github.com/toonetown/appengine-util/archive/v1.7.tar.gz"
  sha256 "e6e49a6871bdb1fff5f336fed7921091e4b59457669edb1936f2e89c84eb7155"

  head "https://github.com/toonetown/appengine-util.git", branch: "master"

  depends_on "app-engine-java"

  skip_clean "bin"

  def install
    prefix.install "bin"
  end

  test do
    system "true"
  end
end
