cask 'kindle@1.24' do
  version '50131'
  sha256 'cc58e6fef6a30e98d78349016a9828009a1d7cd7d0d9f6bc88e74db43edbf7b6'

  # s3.amazonaws.com/kindleformac was verified as official when first introduced to the cask
  url "http://www.toonetown.com/downloads/KindleForMac-#{version}.dmg"
  name 'Kindle for Mac'
  homepage 'https://www.amazon.com/gp/digital/fiona/kcp-landing-page'

  app 'Kindle.app'

  postflight do
    # Tweak renderer-test (see https://www.mobileread.com/forums/showthread.php?t=283371)
    system_command '/bin/chmod', args: ['-x', "#{appdir}/Kindle.app/Contents/MacOS/renderer-test"]
  end

  zap trash: [
               '~/Library/Preferences/com.amazon.Kindle.plist',
               '~/Library/Application Support/Kindle/',
               '~/Library/Saved Application State/com.amazon.Kindle.savedState/',
               '~/Library/Caches/com.amazon.Kindle-Crash-Reporter/',
             ]
end
