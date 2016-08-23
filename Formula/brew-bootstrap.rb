require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class BrewBootstrap < GistFormula
  desc "Bootstraps a Homebrew development environment"
  gist_hash "48101686e509fda81335"
  gist_file "homebrew-bootstrap.sh"
  install_name "brew-bootstrap"
  gist_revision "9c8c3e95"
  version "1.12"
end
