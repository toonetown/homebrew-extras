require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class BashCompletionEnv < EnvProfileFormula
  desc "Loads all the homebrew-installed bash completion scripts"
  env_file "10-bash-completion-env"
  version "1.41"
  sha256 "9a0e8031282d157e7cbf73df7b1d28aae2a2b2a3ae3d8c4c7ee1a09e176f31db"
end
