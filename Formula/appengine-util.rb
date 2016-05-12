require 'formula'

class AppengineUtil < Formula
  version "1.7"
  homepage 'https://github.com/toonetown/appengine-util/'
  url 'https://github.com/toonetown/appengine-util.git', :tag => "v#{version}"
  head 'https://github.com/toonetown/appengine-util.git', :branch => 'master'
  depends_on "app-engine-java"
  
  skip_clean 'bin'
  
  def install
    prefix.install 'bin'
  end
end
