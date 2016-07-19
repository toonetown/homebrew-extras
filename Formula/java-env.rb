require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class JavaEnv < EnvProfileFormula
  desc "Sets the java environment and provides a `use-java` function"
  env_file "10-java-env"
  version "1.15"
  sha256 "a917023f84c9c0efefefa141df6bbac0cfb58723f0b22bd23441a9abf8e1e145"
end
