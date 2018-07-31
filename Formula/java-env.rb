require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class JavaEnv < EnvProfileFormula
  desc "Sets the java environment and provides a `use-java` function"
  env_file "10-java-env"
  version "1.54"
  sha256 "0c33797b10d1ad1549fee67d62b7e35b52fed5b952be08786b1c896c51aa1a92"
end
