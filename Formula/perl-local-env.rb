require 'pathname'
require 'formula'

class PerlLocalEnv < Formula
  version "1.0"
  env_file = "10-perl-local-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "bfbc1b76ac8f2a624f385f6b70704fe2edb5a60b"

  def install
    (prefix+"etc/profile.d").install '10-perl-local-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
