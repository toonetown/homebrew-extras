require 'pathname'
require 'formula'

class PrettyPrompt < Formula
  version "1.31"
  env_file = "01-pretty-prompt"

  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "29e6dea86dd17e8e2d6e964e9edec19521f6dbeb6da28bff972ed4de21b8d1bb"

  def install
    (prefix+"etc/profile.d").install '01-pretty-prompt'
    ohai "You must log out in order for the environment to take effect"
  end
end
