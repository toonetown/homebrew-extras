cask 'icon-composer' do
  version '2.5'
  sha256 'ac835dde82c605b6602ca0fd117b51402a8b307f746fab281f93d89b6c9b24c9'

  dmg_download_path = ENV['DMG_DOWNLOAD_PATH'] ? ENV['DMG_DOWNLOAD_PATH'] : "file:#{ENV['HOME']}/Downloads"
  # /Graphics_Tools_for_Xcode_7.2.dmg was verified as official when first introduced to the cask
  url "#{dmg_download_path}/Graphics_Tools_for_Xcode_7.2.dmg"
  name 'Icon Composer'
  homepage 'http://developer.apple.com/'
  license :unknown

  app 'Icon Composer.app', target: 'Developer/Icon Composer.app'

  caveats <<-EOS.undent
    You must specify a location for the download files by setting the
    environment variable 'DMG_DOWNLOAD_PATH'.  This can be specified as a
    local path (using the file:// scheme) or other URL, and will be used in
    the url for this cask. It defaults to ${HOME}/Downloads

    You can download this file by logging in to:
      https://developer.apple.com/downloads/
    And then downloading from:
      http://adcdownload.apple.com/Developer_Tools/Graphics_Tools_for_Xcode_7.2/Graphics_Tools_for_Xcode_7.2.dmg
  EOS
end
