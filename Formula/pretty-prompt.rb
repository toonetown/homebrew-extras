require 'pathname'
require 'formula'

class PrettyPrompt < Formula
  version "1.30"
  env_file = "01-pretty-prompt"

  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "cc9a49fe5e0d0c45efefac4441001ff32e0b25d57f4207d8d52fd6ce392a9091"

  def install
    (prefix+"etc/profile.d").install '01-pretty-prompt'
    ohai "You must log out in order for the environment to take effect"
  end
end
