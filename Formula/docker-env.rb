require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class DockerEnv < EnvProfileFormula
  desc "Adds some commands to docker, docker-compose, and docker-machine"
  env_file "10-docker-env"
  version "1.63"
  sha256 "fca392c61374f75a9305980f9fe1ac537832ade475d32148e32fb74f2c39d6eb"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
