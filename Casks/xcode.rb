cask :v1 => "xcode" do
  version '6.1.1'
  sha256 '1ad39f89a398d473cfcc5d610b836d240668804818afe58374aa58dcf56a5ccc'

  dmg_download_path=ENV['DMG_DOWNLOAD_PATH'] ? ENV['DMG_DOWNLOAD_PATH'] : "file:#{ENV['HOME']}/Downloads"
  url "#{dmg_download_path}/xcode_6.1.1.dmg"
  homepage "http://developer.apple.com/"
  license :unknown

  app 'Xcode.app'
  
  postflight do
    # Select this version of xcode
    ohai "Selecting default version of Xcode - please enter your password"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/xcode-select', '--switch', destination_path.join("Xcode.app")

    ohai "Agreeing to license"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/xcodebuild', '-license'
  end
  
  uninstall_postflight do
    # Reset the version of xcode
    ohai "Resetting default version of Xcode - please enter your password"
    system '/usr/bin/sudo', '-E', '--', '/usr/bin/xcode-select', '--reset'
  end
  
  caveats <<-EOS.undent
    You must specify a location for the download loctaions by setting the
    environment variable 'DMG_DOWNLOAD_PATH'.  This can be specified as a
    local path (using the file:// scheme) or other URL, and will be used in 
    the url for this cask. It defaults to ${HOME}/Downloads
  EOS
  
end
