require 'cask/installer'
require Pathname(__FILE__).realpath.dirname.join('cask-outdated')

class Cask
  def upgrade
    ohai "Upgrading #{self}..."
    inst = Cask::Installer.new(self)
    inst.uninstall(true)
    inst.install(true)
  end
end
