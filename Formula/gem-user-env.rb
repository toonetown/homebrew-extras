require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class GemUserEnv < EnvProfileFormula
  desc "Sets the GEM environment variables for user-scoped installs"
  env_file "10-gem-user-env"
  version "1.19"
  sha256 "e9e397dd4dce04436388fdb2e2aa4f7c2d7055e0d10f62a27f1594fb880d79c8"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
