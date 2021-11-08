require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Symbolicate < GistFormula
  desc "A script which will help decode macOS dumps, logs, and panics"
  gist_hash "acf48a1729477add233e2eae36b936d6f8072ac9"
  gist_file "symbolicate"
  gist_revision "87b85677"
  version "2"
end
