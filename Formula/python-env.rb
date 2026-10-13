require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class PythonEnv < EnvProfileFormula
  desc "Sets the python environment and provides a `use-python` function"
  env_file "10-python-env"
  version "1.66"
  sha256 "44b2ea27899a369ff5c3c6c08857bd8dad26112b269f69549c69c92d1b9aa3b1"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
