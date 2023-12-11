class EnvProfileFormula < Formula
  def install
    (prefix+"etc/profile.d").install "profile.d" => self.class.env_file
    ohai "You must log out in order for the environment to take effect"
  end

  test do
    system "true"
  end

  class << self
    attr_rw :env_file
  end
end

def env_profile_formula; end
