require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class JavaEnv < EnvProfileFormula
  desc "Sets the java environment and provides a `use-java` function"
  env_file "10-java-env"
  version "1.35"
  sha256 "c4203c8d13e13236e33fe73e59e43e0e318818cf494e87e598d2017547cc2952"
end
