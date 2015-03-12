require 'rubygems'

class Hbc::Cask
  def installed_version?
    !installed_version.nil?
  end

  def installed_version
    # returns latest installed version if possible
    Pathname.glob(caskroom_path.join('*')).map(&:basename).sort{|x,y|
      Gem::Version.new(x) <=> Gem::Version.new(y) # throws exception if invalid version is provided ...
    }.last rescue nil # ... return nil in this case
  end

  def update_available?
    (
      Gem::Version.correct?(version) && # we have something to compare against in Cask file ...
      Gem::Version.correct?(installed_version) && # ... we can determine current installed version ...
      Gem::Version.new(installed_version) < Gem::Version.new(version) # ... compare
    ) || (
      (!Gem::Version.correct?(version) || # we can't compare numerically in the cask file
      !Gem::Version.correct?(installed_version)) && # we can't compare numerically in the cask file
      installed_version.to_s != version.to_s # the versions are different - we assume they installed it earlier
    )
  end
end

module Hbc::Scopes
  module ClassMethods
    def upgradable
      Hbc.installed.select(&:update_available?)
    end
  end
end
