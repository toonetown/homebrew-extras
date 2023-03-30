require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class AndroidNdkEnv < EnvProfileFormula
  desc "Sets ANDROID_NDK_HOME if package is installed"
  env_file "10-android-ndk-env"
  version "1"
  sha256 "5c82f8669def023d245244cfec371df7b4fd98e2bf86bc55d736ae6a3965d183"
end
