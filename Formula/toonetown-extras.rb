require 'pathname'
require 'formula'

require Pathname(__FILE__).realpath.dirname.join('../lib', 'version')

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
    (bin+'brew-script').chmod 0755
    (bin+'update-launchctl-env').chmod 0755
    (bin+'update-env').chmod 0755
    
    ohai "Preparing profile directory - please enter your password"
    system '/bin/bash', 'script/prepare_profile', "#{HOMEBREW_PREFIX}"
  end
  
  def plist; <<-EOS.undent
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
        <key>Label</key>
        <string>#{plist_name}</string>
        <key>Program</key>
        <string>#{bin}/update-launchctl-env</string>
        <key>RunAtLoad</key>
        <true/>
    </dict>
    </plist>
    EOS
  end
  
end
