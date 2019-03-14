require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class RmateEditor < GistFormula
  desc "Remote textmate editor connection"
  gist_hash "84a1fc9868550d741d28fb6d2cae65a6"
  gist_file "rmate-editor"
  gist_revision "e0deedb"
  version "1"
end
