class ToonetownExtras < Formula
  desc "Additional homebrew functionality, formulae, and casks"
  homepage "https://github.com/toonetown/homebrew-extras/"
  url "https://github.com/toonetown/homebrew-extras/archive/v1.60.tar.gz"
  sha256 "64592b0a9a0481b1be054251de18f5b7b579a9e87d53fe37f137a9913b3af609"

  head "https://github.com/toonetown/homebrew-extras.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "lib" => "rubylib"
    prefix.install "script"

    prefix.install "bin"
    (bin+"brew-script").chmod 0755
    (bin+"update-launchctl-env").chmod 0755
    (bin+"update-env").chmod 0755
    
    (prefix+"etc/profile.d").install "etc/profile.d/00-brew-defaults"
    (prefix+"etc/profile.d").install "etc/profile.d/00-bash-warning"
    system "chsh", "-s", "/bin/bash"
  end

  def caveats; <<~EOS
    To set up the environment variables, run:
      #{prefix}/script/prepare_profile #{HOMEBREW_PREFIX.to_s}
    EOS
  end

  plist_options :manual => "update-launchctl-env"

  def plist; <<~EOS
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
