require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.26"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "896a71a358c2d177fed704bd2bd1cf8b58371a7c876d5f4777c30ee5ef6fa4fe"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
