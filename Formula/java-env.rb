require 'pathname'
require 'formula'

class JavaEnv < Formula
  version "1.15"
  env_file = "10-java-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "a917023f84c9c0efefefa141df6bbac0cfb58723f0b22bd23441a9abf8e1e145"

  def install
    (prefix+"etc/profile.d").install '10-java-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
