class EnvProfileFormula < Formula
  def initialize(*)
    cls=self.class
    raise FormulaSpecificationError, "Requires an env_file" unless cls.env_file

    cls.url "https://raw.githubusercontent.com/toonetown/homebrew-extras/master/etc/profile.d/#{cls.env_file}"
    cls.homepage "https://github.com/toonetown/homebrew-extras/"
    cls.depends_on "toonetown/extras/toonetown-extras"

    super
  end

  def install
    (prefix+"etc/profile.d").install self.class.env_file
    ohai "You must log out in order for the environment to take effect"
  end

  test do
    system "true"
  end

  class << self
    attr_rw :env_file
  end
end
