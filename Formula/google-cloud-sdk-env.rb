require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class GoogleCloudSdkEnv < EnvProfileFormula
  desc "Sets the value of GCLOUD_DIR"
  env_file "20-google-cloud-sdk-env"
  version "1.35"
  sha256 "e4de9bf37868478f929d098026443918f4e65b42dafb39e98636820230480487"
end
