require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class AndroidEnv < EnvProfileFormula
  desc "Sets ANDROID_HOME and ANDROID_NDK_HOME if packages are installed"
  env_file "10-android-env"
  version "1.63"
  sha256 "1eb1043d0207b87c172cfe6f395c4422884777d151b9e03ecde3313cc768450d"
end
