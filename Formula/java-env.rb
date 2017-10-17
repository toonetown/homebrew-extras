require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class JavaEnv < EnvProfileFormula
  desc "Sets the java environment and provides a `use-java` function"
  env_file "10-java-env"
  version "1.49"
  sha256 "69057fc1a5316796c149678e423d97b1bb16dc03ff458818ba0597decce803cd"
end
