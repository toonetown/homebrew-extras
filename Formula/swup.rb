require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Swup < GistFormula
  desc "Software updating script"
  gist_hash "65b4ab33286c584fd678eceb23365cb1"
  gist_file "swup"
  gist_revision "ac7d4219"
  version "14"
end
