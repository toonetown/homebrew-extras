require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class SshRmateEnv < EnvProfileFormula
  desc "Aliases rmate to mate when connected to SSH"
  env_file "90-ssh-rmate-env"
  version "1.57"
  sha256 "19b4805a072b7e30c31672ef33857b308c3659984d941703dc1fb059e9fed990"
end
