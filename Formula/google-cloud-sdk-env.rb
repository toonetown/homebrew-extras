require 'pathname'
require 'formula'

class GoogleCloudSdkEnv < Formula
  version "1.19"
  env_file = "20-google-cloud-sdk-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha1 "78fdd8042d66fe482bb02999f294962b0920bd0e"

  def install
    (prefix+"etc/profile.d").install '20-google-cloud-sdk-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
