require 'pathname'
require 'formula'

class MavenEnv < Formula
  version "1.2"
  env_file = "10-maven-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "71ea68eb40adc8d1e9cb06a3ebd854ab83814aedabef34fb16f7b05a76360f9e"

  def install
    (prefix+"etc/profile.d").install '10-maven-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
