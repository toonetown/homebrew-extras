require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class MavenEnv < EnvProfileFormula
  desc "Sets the values of M2_HOME and MAVEN_OPTS if maven is installed"
  env_file "10-maven-env"
  version "1.54"
  sha256 "6b05fd5e0b188ca28d9373ba321376811e9159b60be16246bd83a65767cc4a7f"
end
