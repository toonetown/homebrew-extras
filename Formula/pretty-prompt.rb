require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class PrettyPrompt < EnvProfileFormula
  desc "Sets colors of the prompt and loads scm-prompt if installed"
  env_file "01-pretty-prompt"
  version "1.54"
  sha256 "1bfaaa516e3fc82b15486f36818201f40f16ec0fd7f8bc10b8f3f53cff1b6541"
end
