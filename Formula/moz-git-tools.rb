require 'formula'

class MozGitTools < Formula
  homepage 'hhttps://github.com/mozilla/moz-git-tools/'
  head 'https://github.com/mozilla/moz-git-tools.git', :branch => 'master'
  
  skip_clean 'bin'
  
  def install
    %w[branchname edit-files fix-whitespace new-workdir patch-to-hg-patch
       push-to-hg push-to-try push-to-trychooser qapplied qparent
       qrebase remote-link root to-hg-commit tracks].each { |f| bin.install "git-#{f}"; }
  end
end
