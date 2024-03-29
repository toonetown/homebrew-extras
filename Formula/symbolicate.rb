require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Symbolicate < GistFormula
  desc "A script which will help decode macOS dumps, logs, and panics"
  gist_hash "618507f37da728bbfe3f3e3490c8a550"
  gist_file "symbolicate"
  gist_revision "7d18b1c3"
  version "4"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  depends_on "toonetown/extras/ips2crash"
  depends_on "jq"
end
