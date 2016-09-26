require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class PrettyPrompt < EnvProfileFormula
  desc "Sets colors of the prompt and loads scm-prompt if installed"
  env_file "01-pretty-prompt"
  version "1.41"
  sha256 "fdfced6af45893ae16ea8d1d574cbd63aabd1e4460846d0cacda859d42db2a70"
end
