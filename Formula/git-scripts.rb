require 'formula'

class GitScripts < Formula
  version "1.7"
  homepage 'https://github.com/toonetown/git-scripts/'
  url 'https://github.com/toonetown/git-scripts.git', :tag => "v#{version}"
  head 'https://github.com/toonetown/git-scripts.git', :branch => 'master'
  
  skip_clean 'bin'
  
  def install
    prefix.install 'bin'
  end
end
