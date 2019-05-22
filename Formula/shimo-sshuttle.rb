require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class ShimoSshuttle < GistFormula
  desc "Connects to sshuttle tunnel using Shimo"
  gist_hash "a0ad54becce8d7a9cbbea66ef7619ef7"
  gist_file "shimo-sshuttle"
  gist_revision "44681ebd"
  version "5"

  depends_on "sshuttle"

  def caveats; <<~EOS
    This script leverages sudo to work.  If you would like for this script to run without prompting for a password,
    you can create a sudoers file by running 'sudo visudo -f /etc/sudoers.d/shimo-sshuttle' and giving it the
    following contents:
      %admin  ALL=(root) NOPASSWD: /usr/local/opt/sshuttle/libexec/bin/python, /usr/local/bin/sshuttle
  EOS
  end
end
