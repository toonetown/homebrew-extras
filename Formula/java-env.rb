require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class JavaEnv < EnvProfileFormula
  desc "Sets the java environment and provides a `use-java` function"
  env_file "10-java-env"
  version "1.58"
  sha256 "647d68699bff2c7efdcec7295b2b8fc60f5a6d3d56bac9ac0da9247ed4959561"
end
