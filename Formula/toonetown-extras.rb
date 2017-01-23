class ToonetownExtras < Formula
  desc "Additional homebrew functionality, formulae, and casks"
  homepage "https://github.com/toonetown/homebrew-extras/"
  url "https://github.com/toonetown/homebrew-extras/archive/v1.43.tar.gz"
  sha256 "195114f66d2d8a8845ae5a0a8f718f4e1a4b5aa99ca18f63185e4e5e8ee8c411"

  head "https://github.com/toonetown/homebrew-extras.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "lib" => "rubylib"
    inreplace "bin/brewcask-outdated.rb", "/lib", "/rubylib"
    inreplace "bin/brewcask-upgrade.rb", "/lib", "/rubylib"

    prefix.install "bin"
    (bin+"brewcask-appcast").chmod 0755
    (bin+"brewcask-outdated.rb").chmod 0755
    (bin+"brewcask-upgrade.rb").chmod 0755
    (bin+"brew-script").chmod 0755
    (bin+"update-launchctl-env").chmod 0755
    (bin+"update-env").chmod 0755

    ohai "Preparing profile directory - please enter your password"
    system "/bin/bash", "script/prepare_profile", HOMEBREW_PREFIX.to_s
  end

  plist_options :manual => "update-launchctl-env"

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
        <key>KeepAlive</key>
        <true/>
    </dict>
    </plist>
    EOS
  end

  test do
    system "true"
  end
end
