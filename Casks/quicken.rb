cask 'quicken' do
  version '52.20422.100'
  sha256 'f07fdbcfa32145fce070dfe3a32de92bd8e2e25aec3ca29d94049417d3d26985'

  url "https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/Quicken-#{version}/Quicken-#{version}.zip"
  appcast 'https://download.quicken.com/mac/Quicken/001/Release/031A96D9-EFE6-4520-8B6A-7F465DDAA3E4/appcast.xml',
          checkpoint: '4c42aefc40d9d3e0d87fe0177e8692f84f3530917b33f1851c7c5761dd5cd1c1'
  name 'Quicken'
  homepage 'https://quicken.com/'

  app 'Quicken.app'
end
