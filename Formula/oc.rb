require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Oc < GistFormula
  desc "Openconnect helper script"
  gist_hash "5d09b777cb722bffbcb74f48bc887531"
  gist_file "oc"
  gist_revision "79eeb6bb"
  version "1"

  depends_on "openconnect"

  def caveats; <<~EOS
    This script leverages sudo to work.  If you would like for this script to run without prompting for a password,
    you can create a sudoers file by running 'sudo visudo -f /etc/sudoers.d/oc' and giving it the following contents:
      %admin  ALL=(root) NOPASSWD: /usr/local/bin/oc
      Defaults env_keep += "OC_CONFIG"
    EOS
  end
end
