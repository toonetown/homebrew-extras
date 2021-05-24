require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Webserver < GistFormula
  desc "Quick-and-dirty python web server"
  gist_hash "6603e97bb64c52fa9590"
  gist_file "webserver"
  gist_revision "da33da93"
  version "5"
end
