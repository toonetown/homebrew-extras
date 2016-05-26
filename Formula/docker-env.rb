require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.23"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "e85097319f0e26d35c64f0673b2d47750f963a090e8b9b05124b2a1df9ba938c"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
