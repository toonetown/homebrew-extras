cask 'quicken@2017' do
  version '46.19304.100'
  sha256 '4ef55d1146aec49985a142426e02200b5979cff11bfac83793db304399293dcd'

  url "https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/Quicken2017-#{version}/Quicken2017-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/appcast.xml',
          checkpoint: '175fe342b42cf9ed18893048e6d04dd0f4497a761f36e11c059b5115133d2d4c'
  name 'Quicken 2017'
  homepage 'https://quicken.com/'

  app 'Quicken 2017.app'
end
