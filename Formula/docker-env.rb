require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.27"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "a6dc3199107c6afa88030ebe01c35ac8b2ae14bda71572b1e467eb8fc03e9799"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
