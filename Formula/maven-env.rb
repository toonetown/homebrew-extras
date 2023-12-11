require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class MavenEnv < EnvProfileFormula
  desc "Sets the values of M2_HOME and MAVEN_OPTS if maven is installed"
  env_file "10-maven-env"
  version "1.58"
  sha256 "bd6697d9012e0fb39f906c3048caae85d7b64a16d702938313cfce5be4b633eb"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
