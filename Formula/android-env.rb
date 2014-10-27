require 'pathname'
require 'formula'

class AndroidEnv < Formula
  version "1.0"
  env_file = "20-android-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "3cfb485207c478ddb4ed6f28ccde4ee35bdde215"

  def install
    (prefix+"etc/profile.d").install '20-android-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
