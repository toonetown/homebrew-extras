require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class CheckKextLinkage < GistFormula
  desc "Script to check kext linkage"
  gist_hash "a82af9c92d58fe0491f2a2aa82e53aab"
  gist_file "check-kext-linkage"
  gist_revision "4841a278"
  version "1"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  def caveats
    <<~EOS
      This script leverages sudo to work.  If you would like for this script to run without prompting for a password,
      you can create a sudoers file by running 'sudo visudo -f /etc/sudoers.d/check-kext-linkage' and giving it the
      following contents:
        %admin  ALL=(root) NOPASSWD: /usr/local/bin/check-kext-linkage
        Defaults env_keep += "TMPDIR"
    EOS
  end
end
