require 'pathname'
require Pathname(@path).realpath.dirname.join('../lib', 'predownloaded-cask') unless defined?(predownloaded_cask)

cask 'airbuddy' do
  version '1.5.2-93'
  sha256 'dbb17f500dc8c35113144526aed2a3005babba54288530f50db3986581cd9f3a'

  url cask_url("AirBuddy_v#{version}.zip")
  name 'AirBuddy'
  homepage 'https://gumroad.com/l/airbuddy'

  app 'AirBuddy.app'
end
