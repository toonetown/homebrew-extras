require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class AliasLocal < GistFormula
  desc "Aliases localhost to an address"
  gist_hash "6015487b1ba11c69afad0b6429ecdd28"
  gist_file "alias-local"
  gist_revision "95c381ae"
  version "3"

  def caveats; <<~EOS
    This script leverages sudo to work.  If you would like for this script to run without prompting for a password,
    you can create a sudoers file by running 'sudo visudo -f /etc/sudoers.d/shimo-alias-local' and giving it the
    following contents:
      %admin  ALL=(root) NOPASSWD: /usr/local/bin/alias-local
  EOS
  end
end
