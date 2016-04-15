require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.18"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "9c482fe49b7d77ae473c2071053fa084755603cfa5d1a7cb1c90b13483194e74"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
