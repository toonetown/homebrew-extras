require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class DockerEnv < EnvProfileFormula
  desc "Adds some commands to docker, docker-compose, and docker-machine"
  env_file "20-docker-env"
  version "1.54"
  sha256 "1f9c7fac5fbb24426f05e8deb6b6a1f000399181fbd4916d68e814a823ad4a63"
end
