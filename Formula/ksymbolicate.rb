require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Ksymbolicate < GistFormula
  desc "A script which will help decode macOS kernel panics"
  gist_hash "6f77d12a143655c8825f6a757d854674"
  gist_file "ksymbolicate"
  gist_revision "ce3b999b"
  version "1"
end
