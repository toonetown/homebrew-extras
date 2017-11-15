require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class AndroidEnv < EnvProfileFormula
  desc "Sets ANDROID_HOME and ANDROID_NDK_HOME if packages are installed"
  env_file "20-android-env"
  version "1.50"
  sha256 "2a5708667e2f64382d2069f3e97eb04bba1bb079e7f0568afcf0208411f4d4a4"
end
