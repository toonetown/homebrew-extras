require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class AutoExclude < GistFormula
  desc "A script which will automatically exclude build directories from time machine"
  gist_hash "32c7ef439fc636056d4eeea20e882f32"
  gist_file "auto-exclude.sh"
  gist_revision "5efdb0e9"
  version "1"
end
