require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class JavaEnv < EnvProfileFormula
  desc "Sets the java environment and provides a `use-java` function"
  env_file "10-java-env"
  version "1.41"
  sha256 "50aea48ad3452b8c3575beb6b39cd2278258e734acd4a699b750a891c63beeb8"
end
