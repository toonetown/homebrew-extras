require 'pathname'
require 'formula'

class PerlLocalEnv < Formula
  version "1.1"
  env_file = "10-perl-local-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "86c6446faf804edcc94d5ccbade6c170f600c56b27b4e0a6670228bfae55592d"

  def install
    (prefix+"etc/profile.d").install '10-perl-local-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
