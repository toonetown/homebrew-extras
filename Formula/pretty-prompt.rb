require 'pathname'
require 'formula'

class PrettyPrompt < Formula
  version "1.32"
  env_file = "01-pretty-prompt"

  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "03320c035b80f9a8cf6778c9738dc3da9cb909374fd476d0a7d41af3f4f6c405"

  def install
    (prefix+"etc/profile.d").install '01-pretty-prompt'
    ohai "You must log out in order for the environment to take effect"
  end
end
