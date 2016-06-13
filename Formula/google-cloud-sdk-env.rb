require 'pathname'
require 'formula'

class GoogleCloudSdkEnv < Formula
  version "1.29"
  env_file = "20-google-cloud-sdk-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "c92193d86ede470ddc3ca864498750fcf2e17f42adba28b9da48f0be73eb40ed"

  def install
    (prefix+"etc/profile.d").install '20-google-cloud-sdk-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
