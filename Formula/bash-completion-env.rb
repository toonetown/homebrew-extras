require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class BashCompletionEnv < EnvProfileFormula
  desc "Loads all the homebrew-installed bash completion scripts"
  env_file "10-bash-completion-env"
  version "1.16"
  sha256 "54a43a34bf8ba49ba7314985cd4a54b8d9a4deb9ff3fc84719952177dc7d7b9d"
end
