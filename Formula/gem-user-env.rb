require 'pathname'
require 'formula'

class GemUserEnv < Formula
  version "1.19"
  env_file = "10-gem-user-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "e9e397dd4dce04436388fdb2e2aa4f7c2d7055e0d10f62a27f1594fb880d79c8"

  def install
    (prefix+"etc/profile.d").install '10-gem-user-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
