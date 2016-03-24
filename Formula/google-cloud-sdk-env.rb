require 'pathname'
require 'formula'

class GoogleCloudSdkEnv < Formula
  version "1.19"
  env_file = "20-google-cloud-sdk-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "d3e0f36557a430a7cdc445c9ce2bb17f43fbf0f567ceb861f08db5eecb39b087"

  def install
    (prefix+"etc/profile.d").install '20-google-cloud-sdk-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
