require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class MavenEnv < EnvProfileFormula
  desc "Sets the values of M2_HOME and MAVEN_OPTS if maven is installed"
  env_file "10-maven-env"
  version "1.55"
  sha256 "f45a3278fe104bffb480d211566dec9e197164394a5fdd5e2613013862fd40c1"
end
