require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class DockerEnv < EnvProfileFormula
  desc "Adds some commands to docker, docker-compose, and docker-machine"
  env_file "20-docker-env"
  version "1.55"
  sha256 "fca392c61374f75a9305980f9fe1ac537832ade475d32148e32fb74f2c39d6eb"
end
