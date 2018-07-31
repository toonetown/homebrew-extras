require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class BashCompletionEnv < EnvProfileFormula
  desc "Loads all the homebrew-installed bash completion scripts"
  env_file "10-bash-completion-env"
  version "1.54"
  sha256 "d76d6098586567d9fdd08dbfcb35ca50bac637d8184703ea6e87dd712a176383"
end
