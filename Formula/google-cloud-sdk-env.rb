require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class GoogleCloudSdkEnv < EnvProfileFormula
  desc "Sets the value of GCLOUD_DIR"
  env_file "20-google-cloud-sdk-env"
  version "1.41"
  sha256 "eaf64513b59a0c7e3506a8284d6d171ed1bbdb7b8e0b1436cdbee5ceb5d85d94"
end
