require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class GoogleCloudSdkEnv < EnvProfileFormula
  desc "Sets the value of GCLOUD_DIR and CLOUDSDK_PYTHON"
  env_file "10-google-cloud-sdk-env"
  version "1.64"
  sha256 "9bca50ddfc91032208f8a242a7446914cbad8db5941a397951c5207e5bdedace"

  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  homepage "https://github.com/toonetown/homebrew-extras/"
  depends_on "toonetown/extras/toonetown-extras"
end
