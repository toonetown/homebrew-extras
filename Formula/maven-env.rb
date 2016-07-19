require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class MavenEnv < EnvProfileFormula
  desc "Sets the values of M2_HOME and MAVEN_OPTS if maven is installed"
  env_file "10-maven-env"
  version "1.35"
  sha256 "cb442e100a7c5e9165c958d9597ec60877a864444c1c3594e6462020bb23170b"
end
