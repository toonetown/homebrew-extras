require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class PerlLocalEnv < EnvProfileFormula
  desc "Sets the PERL environment variables for user-scoped installs"
  env_file "10-perl-local-env"
  version "1.1"
  sha256 "86c6446faf804edcc94d5ccbade6c170f600c56b27b4e0a6670228bfae55592d"
end
