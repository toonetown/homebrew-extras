class ScmPrompt < Formula
  desc "Adds scm info to your bash prompt"
  homepage "https://bitbucket.org/facebook/hg-experimental"
  url "https://bitbucket.org/facebook/hg-experimental/get/2358e84ae63d.zip"
  version "1"
  sha256 "0670d88ea7d9f34a4b8d7f884dd7b75943b3e47efdba580dc3a352094aee74e2"

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
