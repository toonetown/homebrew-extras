require 'formula'

class Clf2elf < Formula
  version "1.1"
  homepage 'https://github.com/toonetown/clf2elf/'
  url 'https://github.com/toonetown/clf2elf.git', :tag => "v#{version}"
  head 'https://github.com/toonetown/clf2elf.git', :branch => 'master'
  depends_on "gawk"
  
  skip_clean 'bin'
  
  def install
    prefix.install 'bin'
    prefix.install 'share'
  end
end
