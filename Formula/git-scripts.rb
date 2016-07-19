class GitScripts < Formula
  desc "Additional git extension scripts"
  homepage "https://github.com/toonetown/git-scripts/"
  url "https://github.com/toonetown/git-scripts/archive/v1.9.tar.gz"
  sha256 "8b0f8e1b1ba6b2adfd32828e9d2e63ce47cf84188324fdd504b4c9ca4763b50e"

  head "https://github.com/toonetown/git-scripts.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
  end

  test do
    system "true"
  end
end
