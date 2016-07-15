require "formula"

class BrewBootstrap < Formula
  version "1.10"
  homepage "https://gist.github.com/toonetown/48101686e509fda81335"
  url "https://gist.github.com/48101686e509fda81335.git", :revision => "71f421f9"
  head "https://gist.github.com/48101686e509fda81335.git", :branch => "master"

  skip_clean "bin"

  def install
    chmod 0755, "homebrew-bootstrap.sh"
    bin.install "homebrew-bootstrap.sh" => "brew-bootstrap"
  end
end
