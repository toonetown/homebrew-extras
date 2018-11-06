require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "env-profile-formula") unless defined?(env_profile_formula)

class MateEditorEnv < EnvProfileFormula
  desc "Sets EDITOR if it is not already set"
  env_file "90-mate-editor-env"
  version "1.56"
  sha256 "e6870eabbf6e95640db196e15ce0c4f2b6f76ea6855cabbb0a60fead93d9e622"
  depends_on "toonetown/extras/mate-editor"
end
