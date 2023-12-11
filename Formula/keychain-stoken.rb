require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class KeychainStoken < GistFormula
  desc "Manages stoken with macOS keychain storage"
  gist_hash "b7f1a241d45812402d3d5757bd0eb968"
  gist_file "keychain-stoken"
  gist_revision "86480773"
  version "2"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  depends_on "stoken"
end
