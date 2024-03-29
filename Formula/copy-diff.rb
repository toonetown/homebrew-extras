require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class CopyDiff < GistFormula
  desc "Copies a file if it is different than the target"
  gist_hash "b75e5c37b2ebf891da16ddc5d812f983"
  gist_file "copy-diff"
  gist_revision "9b02d03a"
  version "1"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
