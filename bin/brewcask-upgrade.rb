#!/usr/bin/env ruby
require Pathname(__FILE__).realpath.dirname.join('../lib', 'cask-upgrade')

ARGV.shift if !ARGV.empty?

if ARGV.empty?
  outdated = Hbc.upgradable
else
  selected_casks = ARGV.map { |cask_name| Hbc.load(cask_name) }
  outdated = selected_casks.select(&:update_available?)
end

if outdated.empty?
  ohai "No packages to upgrade"
else
  outdated.each { |c| c.upgrade }
end
