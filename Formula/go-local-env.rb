require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class GoLocalEnv < EnvProfileFormula
  desc "Sets the Golang environment variables for user-scoped installs"
  env_file "10-go-local-env"
  version "1.36"
  sha256 "d024b3054a840260e6026813a30735834cdbb9ddef483c625fdc6e179de19599"
end
