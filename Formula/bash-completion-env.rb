require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class BashCompletionEnv < EnvProfileFormula
  desc "Loads all the homebrew-installed bash completion scripts"
  env_file "10-bash-completion-env"
  version "1.55"
  sha256 "bc01ba7ce3fc7e7d4d25dc9cd08c9b8db2151342d83e70569da9015a29b495d1"
end
