require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class AndroidEnv < EnvProfileFormula
  desc "Sets ANDROID_HOME and ANDROID_NDK_HOME if packages are installed"
  env_file "20-android-env"
  version "1.41"
  sha256 "0bb68dddbec3dbed9184a25aa61692385ee25deb62512965ab3c252a95cf912d"
end
