require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class MavenEnv < EnvProfileFormula
  desc "Sets the values of M2_HOME and MAVEN_OPTS if maven is installed"
  env_file "10-maven-env"
  version "1.2"
  sha256 "71ea68eb40adc8d1e9cb06a3ebd854ab83814aedabef34fb16f7b05a76360f9e"
end
