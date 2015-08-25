cask :v1 => "xcode-beta" do
  version '7.0-b6'
  sha256 '3a5582b85901bb12f87957785dc29b7789bd01f6b51521286b1036688dd0b127'

  dmg_download_path=ENV['DMG_DOWNLOAD_PATH'] ? ENV['DMG_DOWNLOAD_PATH'] : "file:#{ENV['HOME']}/Downloads"
  url "#{dmg_download_path}/Xcode_7_beta_6.dmg"
  homepage "http://developer.apple.com/"
  license :unknown

  app 'Xcode-beta.app'
  
  postflight do
    # Select this version of xcode
    ohai "Selecting default version of Xcode - please enter your password"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/xcode-select', '--switch', staged_path.join("Xcode-beta.app")

    ohai "Agreeing to license"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/xcodebuild', '-license'
  end
  
  uninstall_postflight do
    # Reset the version of xcode
    ohai "Resetting default version of Xcode - please enter your password"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/xcode-select', '--reset'
  end
  
  caveats <<-EOS.undent
    You must specify a location for the download files by setting the
    environment variable 'DMG_DOWNLOAD_PATH'.  This can be specified as a
    local path (using the file:// scheme) or other URL, and will be used in 
    the url for this cask. It defaults to ${HOME}/Downloads
  EOS
  
end
