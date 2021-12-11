require 'pathname'
require Pathname(@path).realpath.dirname.join('../lib', 'predownloaded-cask') unless defined?(predownloaded_cask)

cask 'kindle@1.31' do
  version "1.31.60175"
  sha256 "1d824e42aca1d665384185a04d0b484ff1013f46a573caa39a39c1e0f9457499"

  url cask_url("KindleForMac-#{version}.dmg")
  name "Kindle for Mac"
  desc "Interface for reading and syncing eBooks"
  homepage "https://www.amazon.com/gp/digital/fiona/kcp-landing-page"

  livecheck do
    url "https://www.amazon.com/kindlemacdownload/ref=klp_hz_mac"
    strategy :header_match
  end

  app "Kindle.app"

  uninstall delete: "/Library/Logs/DiagnosticReports/Kindle_*.diag"

  postflight do
    # Tweak renderer-test (see https://www.mobileread.com/forums/showthread.php?t=283371)
    system_command '/bin/chmod', args: ['-x', "#{appdir}/Kindle.app/Contents/MacOS/renderer-test"]
    # Prevent updates (see https://www.mobileread.com/forums/showpost.php?p=4123506&postcount=1242)
    system_command '/bin/mkdir', args: ['-p', "#{ENV["HOME"]}/Library/Application Support/Kindle/updates"]
    system_command '/bin/chmod', args: ['ugo-w', "#{ENV["HOME"]}/Library/Application Support/Kindle/updates"]
  end

  zap trash: [
    "~/Library/Application Support/Kindle",
    "~/Library/Caches/com.amazon.Kindle",
    "~/Library/Caches/com.amazon.Kindle-Crash-Reporter",
    "~/Library/HTTPStorages/com.amazon.Kindle.binarycookies",
    "~/Library/Preferences/com.amazon.Kindle.plist",
    "~/Library/Saved Application State/com.amazon.Kindle.savedState",
  ]
end
