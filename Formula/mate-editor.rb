require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class MateEditor < GistFormula
  desc "Mate wraper for EDITOR variable"
  gist_hash "bb6bc9e8476b1a591dd25faa7e180acb"
  gist_file "mate-editor"
  gist_revision "d07b89a7"
  version "2"
end
