require 'pathname'
require 'formula'

class AndroidEnv < Formula
  version "1.3"
  env_file = "20-android-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "4c0947db2e4aef809e4564835caa0803402ead2b3dc5f071355f5377955c4623"

  def install
    (prefix+"etc/profile.d").install '20-android-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
