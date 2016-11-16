require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class ShimoAutoAlias < GistFormula
  desc "Automatically adds and removes Shimo SSH hosts"
  gist_hash "444211fc2830ae765693f8c28612b6e5"
  gist_file "shimo-auto-alias"
  gist_revision "e998ff68"
  version "1"

  depends_on "toonetown/extras/alias-local"
end
