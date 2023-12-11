require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class OnePasswordCliEnv < EnvProfileFormula
  desc "Wraps the 'op' command with signin/signout helpers"
  env_file "10-1password-cli-env"
  version "1.63"
  sha256 "a018a6f7be96e17c1f8a2313681c06cb133ecac457ad3fcf4d020661c08bd2a4"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
