require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Webserver < GistFormula
  desc "Quick-and-dirty python web server"
  gist_hash "6603e97bb64c52fa9590"
  gist_file "webserver"
  gist_revision "61d73ac5"
  version "6"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
