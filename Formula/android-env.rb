require 'pathname'
require 'formula'

class AndroidEnv < Formula
  version "1.0"
  env_file = "20-android-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "de20bcadb68f94135bf22a0b07523a5dd2f9d61f"

  def install
    (prefix+"etc/profile.d").install '20-android-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
