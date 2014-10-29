require 'pathname'
require 'formula'

class MavenEnv < Formula
  version "1.0"
  env_file = "10-maven-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "1edb5434071619c8226191976116039d094f3598"

  def install
    (prefix+"etc/profile.d").install '10-maven-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
