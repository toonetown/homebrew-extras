require 'formula'

class PrlTools < Formula
  version "1.3"
  homepage 'https://github.com/toonetown/prl-tools/'
  url 'https://github.com/toonetown/prl-tools.git', :tag => "v#{version}"
  head 'https://github.com/toonetown/prl-tools.git', :branch => 'master'
  
  skip_clean 'bin'
  
  def install
    prefix.install 'bin'
  end
  
  def caveats; <<-EOS.undent
    These scripts depend on the prlctl command (which is installed by Paralles Desktop) existing in your path and 
    Parallels Tools installed on the target VMs.  If you do not have parallels installed, you can install it using:
      'brew cask install parallels'
    EOS
  end
end
