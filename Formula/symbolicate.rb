require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Symbolicate < GistFormula
  desc "A script which will help decode macOS dumps, logs, and panics"
  gist_hash "618507f37da728bbfe3f3e3490c8a550"
  gist_file "symbolicate"
  gist_revision "87b85677"
  version "1"
end
