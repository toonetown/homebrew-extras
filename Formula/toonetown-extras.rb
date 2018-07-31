class ToonetownExtras < Formula
  desc "Additional homebrew functionality, formulae, and casks"
  homepage "https://github.com/toonetown/homebrew-extras/"
  url "https://github.com/toonetown/homebrew-extras/archive/v1.54.tar.gz"
  sha256 "9079f2659aeffe6de7057b2550939e0840b9d5650f95d695d98b32f649293392"

  head "https://github.com/toonetown/homebrew-extras.git", :branch => "master"

  skip_clean "bin"

  def install
    prefix.install "lib" => "rubylib"
    prefix.install "script"

    prefix.install "bin"
    (bin+"brew-script").chmod 0755
    (bin+"update-launchctl-env").chmod 0755
    (bin+"update-env").chmod 0755
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
