require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class ShimoSshuttle < GistFormula
  desc "Connects to sshuttle tunnel using Shimo"
  gist_hash "a0ad54becce8d7a9cbbea66ef7619ef7"
  gist_file "shimo-sshuttle"
  gist_revision "e815dec9"
  version "9"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  depends_on "sshuttle"

  def caveats
    <<~EOS
      This script leverages sudo to work.  If you would like for this script to run without prompting for a password,
      you can create a sudoers file by running 'sudo visudo -f /etc/sudoers.d/shimo-sshuttle' and giving it the
      following contents:
        %admin  ALL=(root) NOPASSWD: /usr/local/opt/sshuttle/libexec/bin/python, /usr/local/bin/sshuttle
    EOS
  end
end
