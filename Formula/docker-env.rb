require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.24"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "0c4c2ab70d9383b37d13f5f764625a6ab6b2eba5899a74006719bbbe68938fb4"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
