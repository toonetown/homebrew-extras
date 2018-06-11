cask 'quicken@2017' do
  version '47.19607.100'
  sha256 'b9ee1b819dd5d7fa36981ddd805ff4cb9b1974dd61c7b87abff8fac83787c104'

  url "https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/Quicken2017-#{version}/Quicken2017-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken2017/001/Release/88A2D0E2-FEA5-4251-A92E-6488AD26B7AC/appcast.xml',
          checkpoint: '027956c48e272e71a2bc8e0528b5b056a94e1ffd828318c10ad4492854fc8243'
  name 'Quicken 2017'
  homepage 'https://quicken.com/'

  app 'Quicken 2017.app'
end
