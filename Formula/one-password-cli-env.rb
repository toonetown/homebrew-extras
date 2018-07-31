require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class OnePasswordCliEnv < EnvProfileFormula
  desc "Wraps the 'op' command with signin/signout helpers"
  env_file "20-1password-cli-env"
  version "1.54"
  sha256 "034ea95f9d266d6631e8afee3871d43e353ab647d5e01b214ed31dab5af21f45"
end
