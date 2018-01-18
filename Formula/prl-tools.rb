class PrlTools < Formula
  desc "Some simple Parallels command-line tools"
  homepage "https://github.com/toonetown/prl-tools/"
  url "https://github.com/toonetown/prl-tools/archive/v1.4.tar.gz"
  sha256 "118692a3daf049cfc7cd9d2f239b1d85c3b41a92ce44b47c7fddb794b46fe0dc"

  head "https://github.com/toonetown/prl-tools.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "bin"
  end

  def caveats; <<~EOS.undent
    These scripts depend on the prlctl command (which is installed by Paralles Desktop) existing in your path and
    Parallels Tools installed on the target VMs.  If you do not have parallels installed, you can install it using:
      'brew cask install parallels'
    EOS
  end

  test do
    system "true"
  end
end
