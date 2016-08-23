require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class CheckCode < GistFormula
  desc "Performs some code style checking"
  gist_hash "7b10f70daf0b647d671c08cb2e2740b6"
  gist_file "check-code"
  gist_revision "6464f35b"
  version "1"
end
