require 'hbc/installer'
require Pathname(__FILE__).realpath.dirname.join('cask-outdated')

class Hbc
  def upgrade
    ohai "Upgrading #{self}..."
    inst = Hbc::Installer.new(self)
    inst.uninstall(true)
    inst.install(true)
  end
end
