require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class PrettyPrompt < EnvProfileFormula
  desc "Sets colors of the prompt and loads scm-prompt if installed"
  env_file "01-pretty-prompt"
  version "1.55"
  sha256 "90e97118414e579949687e9510802c89ca7d5d4f56062c8fc02503c8fec91fe1"
end
