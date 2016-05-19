require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.20"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "0617b8a4e0c8dcbd21c07de8d4574c11b5bdaeafab344ce75f321e91d9c25c91"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
