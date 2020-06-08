require 'pathname'
require Pathname(@path).realpath.dirname.join('../lib', 'predownloaded-cask') unless defined?(predownloaded_cask)

cask 'xsymbolicate' do
  version '5'
  sha256 '4ac8d7a5caa15fb643a1b8ce78b57c1a1ec7e523a9cd79e314f9151d416023ae'

  url cask_url("Xsymbolicate_#{version}.zip")
  name 'Xsymbolicate'
  homepage 'https://www.mattrajca.com/xsymbolicate/'

  app 'Xsymbolicate.app'
end
