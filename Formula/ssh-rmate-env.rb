require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class SshRmateEnv < EnvProfileFormula
  desc "Aliases rmate to mate when connected to SSH"
  env_file "90-ssh-rmate-env"
  version "1.38"
  sha256 "80e9840956d4a5d79d80391d06a409763f6708a3407e1e5cd3a1fac15df71609"
end
