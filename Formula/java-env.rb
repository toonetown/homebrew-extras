require 'pathname'
require 'formula'

class JavaEnv < Formula
  version "1.2"
  env_file = "10-java-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "887e36285560e7e987e8ccf5bcec23b266d26ea0"

  def install
    (prefix+"etc/profile.d").install '10-java-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
