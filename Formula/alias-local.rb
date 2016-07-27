require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula")

class AliasLocal < GistFormula
  desc "Aliases localhost to an address"
  gist_hash "6015487b1ba11c69afad0b6429ecdd28"
  gist_file "alias-local"
  gist_revision "2fc89c8a"
  version "1"
end
