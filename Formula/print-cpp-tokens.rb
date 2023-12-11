require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class PrintCppTokens < GistFormula
  desc "Prints all the c++ tokens in a file"
  gist_hash "b529408d508180dfee742322b086e962"
  gist_file "print-cpp-tokens"
  gist_revision "83c4c2c5"
  version "1"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
