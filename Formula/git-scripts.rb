class GitScripts < Formula
  desc "Additional git extension scripts"
  homepage "https://github.com/toonetown/git-scripts/"
  url "https://github.com/toonetown/git-scripts/archive/v1.10.tar.gz"
  sha256 "bcdd8a89008ea1586e50002de24e3372b5ab170b81b7781025289e402914e67b"

  head "https://github.com/toonetown/git-scripts.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
  end

  test do
    system "true"
  end
end
