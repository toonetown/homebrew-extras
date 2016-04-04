require 'pathname'
require 'formula'

class BashCompletionEnv < Formula
  version "1.16"
  env_file = "10-bash-completion-env"
  
  depends_on "toonetown-extras"
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{env_file}"
  sha256 "54a43a34bf8ba49ba7314985cd4a54b8d9a4deb9ff3fc84719952177dc7d7b9d"

  def install
    (prefix+"etc/profile.d").install '10-bash-completion-env'
    ohai "You must log out in order for the environment to take effect"
  end
end
