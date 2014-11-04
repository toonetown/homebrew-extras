require 'formula'

class AndroidUtil < Formula
  version "1.0"
  homepage 'https://github.com/toonetown/android-util/'
  url 'https://github.com/toonetown/android-util.git', :tag => "v#{version}"
  head 'https://github.com/toonetown/android-util.git', :branch => 'master'
  depends_on "android-sdk"
  
  def install
    prefix.install 'bin'
  end
end
