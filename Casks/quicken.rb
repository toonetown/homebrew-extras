cask 'quicken' do
  version '52.20386.100'
  sha256 '218d24a205a1f62ca1b07c644c9bb0c597aced0e01c603988434d0ee072a3cff'

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version}/Quicken-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml',
          checkpoint: 'b3354b2d16fad3ad82fd2c251b4551eeaa8522a4909be33939078f8ec298a849'
  name 'Quicken'
  homepage 'https://quicken.com/'

  app 'Quicken.app'
end
