class EnvProfileFormula < Formula
  def install
    (prefix+"etc/profile.d").install "profile.d" => self.class.env_file
    ohai "You must log out in order for the environment to take effect"
  end

  test do
    system "true"
  end

  class << self
    sig { params(val: String).returns(T.nilable(String)) }
    def env_file(val = T.unsafe(nil))
      val.nil? ? @env_file : @env_file= T.let(val, T.nilable(String))
    end
  end
end

def env_profile_formula; end
