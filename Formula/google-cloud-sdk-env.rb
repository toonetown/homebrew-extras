require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class GoogleCloudSdkEnv < EnvProfileFormula
  desc "Sets the value of GCLOUD_DIR"
  env_file "10-google-cloud-sdk-env"
  version "1.63"
  sha256 "eaf64513b59a0c7e3506a8284d6d171ed1bbdb7b8e0b1436cdbee5ceb5d85d94"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
