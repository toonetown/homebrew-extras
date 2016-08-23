require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class DockerEnv < EnvProfileFormula
  desc "Adds some commands to docker, docker-compose, and docker-machine"
  env_file "20-docker-env"
  version "1.27"
  sha256 "a6dc3199107c6afa88030ebe01c35ac8b2ae14bda71572b1e467eb8fc03e9799"
end
