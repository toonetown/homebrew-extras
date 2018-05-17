cask 'quicken@2017' do
  version '46.19361.100'
  sha256 'c5d3aca93d28c62035d3c366d64d8fb13ca74d5e9f3bcfc60561db5d34d35cde'

  url "https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/Quicken2017-#{version}/Quicken2017-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/appcast.xml',
          checkpoint: '9f244c5cd08daa609a966e517785b27c092005a1306015c2bca08d1c535de4ac'
  name 'Quicken 2017'
  homepage 'https://quicken.com/'

  app 'Quicken 2017.app'
end
