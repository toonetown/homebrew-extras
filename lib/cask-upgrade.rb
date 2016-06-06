require 'hbc/installer'
require Pathname(__FILE__).realpath.dirname.join('cask-outdated')

class Hbc::Cask
  def upgrade
    ohai "Upgrading #{self}..."
    inst = Hbc::Installer.new(self, force: true)
    inst.uninstall
    inst.install
  end
end
