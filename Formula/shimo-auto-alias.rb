require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class ShimoAutoAlias < GistFormula
  desc "Automatically adds and removes Shimo SSH hosts"
  gist_hash "444211fc2830ae765693f8c28612b6e5"
  gist_file "shimo-auto-alias"
  gist_revision "57a2a6b3"
  version "2"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  depends_on "toonetown/extras/alias-local"
end
