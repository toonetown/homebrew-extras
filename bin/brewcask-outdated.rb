#!/usr/bin/env ruby
require Pathname(__FILE__).realpath.dirname.join('../lib', 'cask-outdated')

upgradable_casks = Hbc.upgradable

puts upgradable_casks.length == 0 && 'No outdated packages' || upgradable_casks
