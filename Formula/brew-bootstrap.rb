require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class BrewBootstrap < GistFormula
  desc "Bootstraps a Homebrew development environment"
  gist_hash "48101686e509fda81335"
  gist_file "homebrew-bootstrap.sh"
  install_name "brew-bootstrap"
  gist_revision "485358e2"
  version "31"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"
end
