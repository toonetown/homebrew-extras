require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Tot < GistFormula
  desc "A shell script for Tot (via zrzka)"
  gist_hash "5948256ac72c3f3820aebff1fb4b1b70"
  gist_file "tot"
  gist_revision "461280a8"
  version "7"
  
  depends_on "python"
end
