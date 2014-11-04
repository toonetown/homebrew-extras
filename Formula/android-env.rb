require 'pathname'
require 'formula'

class AndroidEnv < Formula
  version "1.1"
  env_file = "20-android-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "1235c7ba36b87ca4a0e48100ec5601d02ee80390"

  def install
    (prefix+"etc/profile.d").install '20-android-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
