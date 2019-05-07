require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class GitP4g < GistFormula
  desc "Adds perforce command line access using git configuration"
  gist_hash "5acae4666ecdf5535c1cff0dcd34a1c7"
  gist_file "git-p4g"
  gist_revision "35db68da"
  version "2"

  depends_on "toonetown/extras/perforce"
end
