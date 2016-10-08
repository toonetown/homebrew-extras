cask 'android-appstubs' do
  version '1.1'
  sha256 'c1151e3fa9a5b5139b1e10d66f05ab00c60ffd6bd754a630cc411f6a7db067d8'

  url "https://github.com/toonetown/android-appstubs/releases/download/v#{version}/android-appstubs-#{version}.tar.gz"
  appcast 'https://github.com/toonetown/android-appstubs/releases.atom',
          checkpoint: '68c904130013999190a0c7e7795e7f9048ffb2b3a1530e6318ab4f00da8b00aa'
  name 'Android App Stubs'
  homepage 'https://github.com/toonetown/android-appstubs/'

  app 'Android AVD Manager.app', target: 'Android/Android AVD Manager.app'
  app 'Android SDK Manager.app', target: 'Android/Android SDK Manager.app'
  app 'Android Emulator.app', target: 'Android/Android Emulator.app'
  app 'Android Emulator (Wiped).app', target: 'Android/Android Emulator (Wiped).app'
end
