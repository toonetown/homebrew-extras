require "pathname"
require Pathname(__FILE__).realpath.dirname.join("../lib", "gist-formula") unless defined?(gist_formula)

class ScmPrompt < GistFormula
  desc "Adds scm info to your bash prompt"
  gist_hash "f7e905f6c730043e84a0b918332fc24d"
  gist_file "scm-prompt"
  gist_revision "631a279e"
  version "2"

  homepage "https://gist.github.com/toonetown/#{gist_hash}"
  url "https://gist.github.com/#{gist_hash}.git", :revision => gist_revision
  head "https://gist.github.com/#{gist_hash}.git", :branch => "master"
  skip_clean "bin"

  def caveats
    <<~EOS
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
end
