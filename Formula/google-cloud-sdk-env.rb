require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class GoogleCloudSdkEnv < EnvProfileFormula
  desc "Sets the value of GCLOUD_DIR"
  env_file "20-google-cloud-sdk-env"
  version "1.29"
  sha256 "c92193d86ede470ddc3ca864498750fcf2e17f42adba28b9da48f0be73eb40ed"
end
