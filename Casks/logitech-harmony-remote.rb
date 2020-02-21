cask 'logitech-harmony-remote' do
  version '7.9.0'
  sha256 '9605cf0d6398e013432647a62dd56a53ea3cd67d32165b8cf2d628ad01a337bf'

  url "https://images-support.myharmony.com/software/LogitechHarmonyRemoteSoftware#{version}-OSX.dmg"
  name 'Logitech Harmony Remote Software'
  homepage 'https://support.myharmony.com/en-us/download'

  pkg 'LogitechHarmonyRemoteSoftware.pkg'
  pkg '.logitech-2.0.4a90.pkg'

  preflight do
    system_command '/usr/bin/ditto',
                   args: [
                           "#{staged_path}/.logitech-2.0.4a90.pkg",
                           '/Volumes/LogitechHarmonyRemoteSoftware/.logitech-2.0.4a90.pkg',
                         ],
                   sudo: true
  end

  postflight do
    system_command '/bin/rm', args: ['-rf', '/Volumes/LogitechHarmonyRemoteSoftware'], sudo: true
  end

  uninstall pkgutil: [
                       'com.Belcarra.driver.LogitechHarmony',
                       'com.logitech.harmony.cappuccino.client.logitech',
                     ]
end
