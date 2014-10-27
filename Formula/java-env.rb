require 'pathname'
require 'formula'

class JavaEnv < Formula
  version "1.0"
  env_file = "10-java-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "35019f7d64c4d767d98ba9c3abe3a9e5ff034407"

  def install
    (prefix+"etc/profile.d").install '10-java-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
