cask 'packagemaker' do
  version '3.0.6'
  sha256 '57eb1ec7f13cc36b56ee517f564fa2ad5cc2ab337b90aecbba5d1dbd08a7d203'

  dmg_download_path = ENV['DMG_DOWNLOAD_PATH'] ? ENV['DMG_DOWNLOAD_PATH'] : "file:#{ENV['HOME']}/Downloads"
  # /xcode44auxtools6938114a.dmg was verified as official when first introduced to the cask
  url "#{dmg_download_path}/xcode44auxtools6938114a.dmg"
  name 'PackageMaker'
  homepage 'http://developer.apple.com/'
  license :unknown

  app 'PackageMaker.app', target: 'Developer/PackageMaker.app'

  caveats <<-EOS.undent
    You must specify a location for the download files by setting the
    environment variable 'DMG_DOWNLOAD_PATH'.  This can be specified as a
    local path (using the file:// scheme) or other URL, and will be used in
    the url for this cask. It defaults to ${HOME}/Downloads

    You can download this file by logging in to:
      https://developer.apple.com/downloads/
    And then downloading from:
      http://adcdownload.apple.com/Developer_Tools/auxiliary_tools_for_xcode__late_july_2012/xcode44auxtools6938114a.dmg
  EOS
end
