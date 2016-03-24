require 'pathname'
require 'formula'

class JavaEnv < Formula
  version "1.2"
  env_file = "10-java-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "09cce8a97c1aa75c66ded91d4c234ee468026dd488f1d02a9c024d3f1449ce30"

  def install
    (prefix+"etc/profile.d").install '10-java-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
