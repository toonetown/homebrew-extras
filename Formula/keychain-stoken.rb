require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class KeychainStoken < GistFormula
  desc "Manages stoken with macOS keychain storage"
  gist_hash "b7f1a241d45812402d3d5757bd0eb968"
  gist_file "keychain-stoken"
  gist_revision "f5c8c28d"
  version "1"

  depends_on "stoken"
end
