cask 'quicken@2017' do
  version '46.19238.100'
  sha256 '688fc465c36b12e08ee7fe8739ed506bdc26339069a69434882516e181ccee6b'

  url "https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/Quicken2017-#{version}/Quicken2017-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/appcast.xml',
          checkpoint: '0a6116ddcca0e0329f57264f3bb79b8bfcc5030e47abc42430457357c60e1108'
  name 'Quicken 2017'
  homepage 'https://quicken.com/'

  app 'Quicken 2017.app'
end
