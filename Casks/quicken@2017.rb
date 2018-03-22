cask 'quicken@2017' do
  version '46.19356.100'
  sha256 '0116f9e5f6b401e9f6bef40948ae1e397e3c13ca2f6bcfaa254840c1f1faf817'

  url "https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/Quicken2017-#{version}/Quicken2017-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/appcast.xml',
          checkpoint: '16dd191ba555d69180c6e7e6be02715b7ec21a79feae2d7d7f60ef6d01eb5388'
  name 'Quicken 2017'
  homepage 'https://quicken.com/'

  app 'Quicken 2017.app'
end
