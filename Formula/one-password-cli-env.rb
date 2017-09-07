require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class OnePasswordCliEnv < EnvProfileFormula
  desc "Wraps the 'op' command with signin/signout helpers"
  env_file "20-1password-cli-env"
  version "1.47"
  sha256 "75fede3e65fd8bbf353f3d6a9657da9203df8477b4610eec43a5c6061ac734c4"
end
