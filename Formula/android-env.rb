require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula")

class AndroidEnv < EnvProfileFormula
  desc "Sets ANDROID_HOME and ANDROID_NDK_HOME if packages are installed"
  env_file "20-android-env"
  version "1.3"
  sha256 "4c0947db2e4aef809e4564835caa0803402ead2b3dc5f071355f5377955c4623"
end
