require 'pathname'
require 'formula'

class MavenEnv < Formula
  version "1.2"
  env_file = "10-maven-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "ec28e81b8549572c88ea73154ab9fd56c46af848"

  def install
    (prefix+"etc/profile.d").install '10-maven-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
