require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class BrewcaskCheckAppcast < GistFormula
  desc "Adds a 'check-appcast' action for brew-cask"
  gist_hash "10e99bc35085a01851ab296e1e5f5379"
  gist_file "brewcask-check-appcast"
  install_name "brewcask-check-appcast"
  gist_revision "3c9c5800"
  version "1.1"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
