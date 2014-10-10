require 'pathname'
require 'formula'

require Pathname(__FILE__).realpath.dirname.join('lib', 'version')

class ToonetownExtras < Formula
  homepage 'https://github.com/toonetown/homebrew-extras/'
  url 'https://github.com/toonetown/homebrew-extras.git', :tag => "v#{TOONETOWN_EXTRAS_VERSION}"

  head 'https://github.com/toonetown/homebrew-extras.git', :branch => 'master'

  skip_clean 'bin'

  def install
    prefix.install 'lib' => 'rubylib'
    inreplace 'bin/brewcask-outdated.rb', '/lib', '/rubylib'
    inreplace 'bin/brewcask-upgrade.rb', '/lib', '/rubylib'

    prefix.install 'bin'
    (bin+'brewcask-outdated.rb').chmod 0755
    (bin+'brewcask-upgrade.rb').chmod 0755
  end
end
