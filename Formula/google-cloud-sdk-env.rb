require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class GoogleCloudSdkEnv < EnvProfileFormula
  desc "Sets the value of GCLOUD_DIR"
  env_file "20-google-cloud-sdk-env"
  version "1.37"
  sha256 "da8acb4837eb31ddb468b1b0e2e4bb8340f7e72f1c54bd8f7152d8dc8878df5f"
end
