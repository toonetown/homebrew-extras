require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.14"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "7a545dcdaea905523d76f2ba42a625b0db42382b"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
