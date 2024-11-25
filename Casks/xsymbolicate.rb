require 'pathname'
require Pathname(@path).realpath.dirname.join('../lib', 'predownloaded-cask') unless defined?(predownloaded_cask)

cask 'xsymbolicate' do
  version '10'
  sha256 'fddfe6e8ba5ec041ccad233ce44061e5f511d78daff1cba20b7559d5a1b3e298'

  url cask_url("Xsymbolicate_#{version}.zip")
  name 'Xsymbolicate'
  homepage 'https://www.mattrajca.com/xsymbolicate/'

  app 'Xsymbolicate.app'
end
