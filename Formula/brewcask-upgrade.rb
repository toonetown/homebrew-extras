require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class BrewcaskUpgrade < GistFormula
  desc "Adds an 'upgrade' action for brew-cask"
  gist_hash "657606a8bac754eb2856f53e5001b4a3"
  gist_file "brewcask-upgrade"
  install_name "brewcask-upgrade"
  gist_revision "79f481de"
  version "1.1"
end
