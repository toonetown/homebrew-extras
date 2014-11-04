require 'pathname'
require 'formula'

class JavaEnv < Formula
  version "1.1"
  env_file = "10-java-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "7f6e45ca45db465bd8e090dbfd6b6ca7f975fe7a"

  def install
    (prefix+"etc/profile.d").install '10-java-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
