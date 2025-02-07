require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class MateEditor < GistFormula
  desc "Mate wraper for EDITOR variable"
  gist_hash "bb6bc9e8476b1a591dd25faa7e180acb"
  gist_file "mate-editor"
  gist_revision "9676575a"
  version "3"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
