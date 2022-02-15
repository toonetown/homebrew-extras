require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class WordleSolver < GistFormula
  desc "Helps solve wordle puzzles"
  gist_hash "5b7e8c8dc47496f65d2468bc13ab507a"
  gist_file "wordle-solver"
  gist_revision "12e80782"
  version "2"
end
