require 'pathname'
require 'formula'

class AndroidEnv < Formula
  version "1.3"
  env_file = "20-android-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "da434473d32e96c2d58823e3d7cbb9a3d0f3ceee"

  def install
    (prefix+"etc/profile.d").install '20-android-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
