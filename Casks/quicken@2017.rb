cask 'quicken@2017' do
  version '48.20030.100'
  sha256 '8e2820d5600c45a720be653594bf98c6acf397318d26dff25e183df61d3e9d7c'

  url "https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/Quicken2017-#{version}/Quicken2017-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/appcast.xml'
  name 'Quicken 2017'
  homepage 'https://quicken.com/'

  app 'Quicken 2017.app'
end
