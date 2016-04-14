require 'pathname'
require 'formula'

class DockerEnv < Formula
  version "1.17"
  env_file = "20-docker-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "72785907dfc42efff2853dba4d23cdd46035f6b916b575b9b388648906116efb"

  def install
    (prefix+"etc/profile.d").install '20-docker-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
