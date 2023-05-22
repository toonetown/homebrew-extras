require 'pathname'
require Pathname(@path).realpath.dirname.join('../lib', 'predownloaded-cask') unless defined?(predownloaded_cask)

cask 'xsymbolicate' do
  version '8'
  sha256 '2f47e38a688a3fc905348903439c30708c8accba02f81250c526f5954afbdb56'

  url cask_url("Xsymbolicate_#{version}.zip")
  name 'Xsymbolicate'
  homepage 'https://www.mattrajca.com/xsymbolicate/'

  app 'Xsymbolicate.app'
end
