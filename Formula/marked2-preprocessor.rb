require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Marked2Preprocessor < GistFormula
  desc "Preprocessor to fix Marked2 GitHub Flavored Markdown format"
  gist_hash "f7690761e2a91d6c43038e778851909d"
  gist_file "marked2-preprocessor"
  gist_revision "d85112d1"
  version "1"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
