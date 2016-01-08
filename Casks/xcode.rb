cask "xcode" do
  version '7.0'
  sha256 '37ae21de35f1ce6121800b31579c6147e6e8b13865befb8adc441b0b6885eb4a'

  dmg_download_path=ENV['DMG_DOWNLOAD_PATH'] ? ENV['DMG_DOWNLOAD_PATH'] : "file:#{ENV['HOME']}/Downloads"
  url "#{dmg_download_path}/Xcode_7_GM_seed.dmg"
  homepage "http://developer.apple.com/"
  license :unknown

  app 'Xcode.app'
  
  postflight do
    # Select this version of xcode
    ohai "Selecting default version of Xcode - please enter your password"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/xcode-select', '--switch', staged_path.join("Xcode.app")

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
