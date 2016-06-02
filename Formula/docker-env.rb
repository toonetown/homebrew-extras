require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.25"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "018085ee5c6b8c4e3956e098a29969f43c72c09810444ed582edfeda1751ebe0"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
