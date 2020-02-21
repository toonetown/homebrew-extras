require 'pathname'
require Pathname(@path).realpath.dirname.join('../lib', 'predownloaded-cask') unless defined?(predownloaded_cask)

cask 'xsymbolicate' do
  version '4'
  sha256 '78bc1b313466a933569309b3b5a25d42f13f0dac1cbfd245b138ce7fe6beb1f5'

  url cask_url("Xsymbolicate_#{version}.zip")
  name 'Xsymbolicate'
  homepage 'https://www.mattrajca.com/xsymbolicate/'

  app 'Xsymbolicate.app'
end
