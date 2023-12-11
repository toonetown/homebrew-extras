require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Ksymbolicate < GistFormula
  desc "A script which will help decode macOS kernel panics"
  gist_hash "6f77d12a143655c8825f6a757d854674"
  gist_file "ksymbolicate"
  gist_revision "694e73fd"
  version "2"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
