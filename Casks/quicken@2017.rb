cask 'quicken@2017' do
  version '46.19138.100'
  sha256 'd6c28b907440b58c4f2cabaf6ecf3ecc4511622a683223eb5d7b6d526322aec2'

  url "https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/Quicken2017-#{version}/Quicken2017-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/appcast.xml',
          checkpoint: 'd03e322c38d6aa67a6a1a6abb06f3cea43c99a5919d2da62cc65252909e9b00d'
  name 'Quicken 2017'
  homepage 'https://quicken.com/'

  app 'Quicken 2017.app'
end
