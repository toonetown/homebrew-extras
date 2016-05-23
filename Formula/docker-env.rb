require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.22"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "a290d5c83bd83afd651b5f00434c87fdadee16d4c217dbe9d35c94adf9665edb"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
