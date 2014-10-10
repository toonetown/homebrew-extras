#!/usr/bin/env ruby
require Pathname(__FILE__).realpath.dirname.join('../lib', 'cask-upgrade')

ARGV.shift if !ARGV.empty?

if ARGV.empty?
  outdated = Cask.upgradable
else
  selected_casks = ARGV.map { |cask_name| Cask.load(cask_name) }
  outdated = selected_casks.select(&:update_available?)
end

if outdated.empty?
  oh1 "No packages to upgrade"
else
  outdated.each { |c| c.upgrade }
end
