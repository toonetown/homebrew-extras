require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class CsshxEnv < EnvProfileFormula
  desc "Sets the csshx autocomplete"
  env_file "10-csshx-env"
  version "1.62"
  sha256 "a948decc3e79cc259db03b1ce41f46f169d4ea6bf02bf296b04793d33a70e42f"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
