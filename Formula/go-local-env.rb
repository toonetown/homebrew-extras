require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class GoLocalEnv < EnvProfileFormula
  desc "Sets the Golang environment variables for user-scoped installs"
  env_file "10-go-local-env"
  version "1.36"
  sha256 "d024b3054a840260e6026813a30735834cdbb9ddef483c625fdc6e179de19599"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
