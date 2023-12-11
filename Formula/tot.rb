require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Tot < GistFormula
  desc "A shell script for Tot (via zrzka)"
  gist_hash "5a73a279c905a56a14b1d2f535d62dea"
  gist_file "tot"
  gist_revision "fa9b873c"
  version "9"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  depends_on "python"
end
