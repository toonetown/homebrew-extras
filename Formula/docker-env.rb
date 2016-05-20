require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.21"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "dcb5dce6612a5c3753e62d0436a5a995695cb6afb6e8b851e0325cc189071cba"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
