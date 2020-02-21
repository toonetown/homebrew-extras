require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class JavaEnv < EnvProfileFormula
  desc "Sets the java environment and provides a `use-java` function"
  env_file "10-java-env"
  version "1.61"
  sha256 "18697d80c98c6b7959f2ac325f202990d5ebaf8f82fcb0bf9ffd36ac905175ee"
end
