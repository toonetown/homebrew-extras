require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class ShimoPulseVpn < GistFormula
  desc "Connects Shimo to PulseSecure hosts"
  gist_hash "b45ccff51065cc33d982c10989c85590"
  gist_file "shimo-pulse-vpn"
  gist_revision "24c4631f"
  version "8"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  def caveats
    <<~EOS
      This script leverages sudo to work.  If you would like for this script to run without prompting for a password,
      you can create a sudoers file by running 'sudo visudo -f /etc/sudoers.d/shimo-pulse' and giving it the
      following contents:
        %admin   ALL=(root) NOPASSWD: /usr/local/bin/shimo-pulse-vpn
        Defaults env_keep += "PULSE_VPN_USER PULSE_VPN_CONF PULSE_VPN_HOST PULSE_VPN_TEST_HOST PULSE_KEYCHAIN_ITEM"

      It will also read a password from "${HOME}/.pulse-keychain" to unlock your OS X keychain to get passwords.
    EOS
  end
end
