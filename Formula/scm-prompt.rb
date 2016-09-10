class ScmPrompt < Formula
  desc "Adds scm info to your bash prompt"
  homepage "https://bitbucket.org/facebook/hg-experimental"
  url "https://bitbucket.org/facebook/hg-experimental/get/2358e84ae63d.zip"
  version "1"
  sha256 "abe4db99c7f5481ecefe178f6d784a3b668214058f834a56360cd092df002214"

  skip_clean "bin"

  def install
    chmod 0755, "scripts/scm-prompt.sh"
    bin.install "scripts/scm-prompt.sh" => "scm-prompt"
  end

  def caveats; <<-EOS.undent
    You will want to load this script in your ~/.bash_profile as follows:
      which scm-prompt &>/dev/null && {
        source "$(brew --prefix scm-prompt)/bin/scm-prompt"
        export PS1="\\[\\e[0;32m\\]\\u@\\h \\[\\e[0;34m\\]\\W\\$(_scm_prompt) \\$ \\[\\e[m\\]"
      } || {
        export PS1="\\[\\e[0;32m\\]\\u@\\h \\[\\e[0;34m\\]\\W \\$ \\[\\e[m\\]"
      }

    You can install toonetown/extras/pretty-prompt to automatically set these as an auto-exec environment
    EOS
  end

  test do
    system "true"
  end
end
