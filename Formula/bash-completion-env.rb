require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class BashCompletionEnv < EnvProfileFormula
  desc "Loads all the homebrew-installed bash completion scripts"
  env_file "10-bash-completion-env"
  version "1.59"
  sha256 "c0a58132f3cf8f716aa44b4627653e9b95e00e8ae094298b3258c831f2ec5328"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
