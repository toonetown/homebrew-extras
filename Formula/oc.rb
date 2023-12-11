require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class Oc < GistFormula
  desc "Openconnect helper script"
  gist_hash "5d09b777cb722bffbcb74f48bc887531"
  gist_file "oc"
  gist_revision "a362b9f9"
  version "4"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  depends_on "openconnect"

  def caveats
    <<~EOS
      This script leverages sudo to work.  If you would like for this script to run without prompting for a password,
      you can create a sudoers file by running 'sudo visudo -f /etc/sudoers.d/oc' and giving it the following contents:
        %admin  ALL=(root) NOPASSWD: /usr/local/bin/oc
        Defaults env_keep += "OC_CONFIG"
    EOS
  end
end
