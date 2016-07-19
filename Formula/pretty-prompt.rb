require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class PrettyPrompt < EnvProfileFormula
  desc "Sets colors of the prompt and loads scm-prompt if installed"
  env_file "01-pretty-prompt"
  version "1.32"
  sha256 "03320c035b80f9a8cf6778c9738dc3da9cb909374fd476d0a7d41af3f4f6c405"
end
