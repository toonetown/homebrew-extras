class GistFormula < Formula
  def install
    chmod 0755, self.class.gist_file
    if self.class.install_name
      bin.install self.class.gist_file => self.class.install_name
    else
      bin.install self.class.gist_file
    end
  end

  test do
    system "true"
  end

  class << self
    sig { params(val: String).returns(T.nilable(String)) }
    def gist_hash(val = T.unsafe(nil))
      val.nil? ? @gist_hash : @gist_hash= T.let(val, T.nilable(String))
    end

    sig { params(val: String).returns(T.nilable(String)) }
    def gist_file(val = T.unsafe(nil))
      val.nil? ? @gist_file : @gist_file= T.let(val, T.nilable(String))
    end

    sig { params(val: String).returns(T.nilable(String)) }
    def gist_revision(val = T.unsafe(nil))
      val.nil? ? @gist_revision : @gist_revision= T.let(val, T.nilable(String))
    end

    sig { params(val: String).returns(T.nilable(String)) }
    def install_name(val = T.unsafe(nil))
      val.nil? ? @install_name : @install_name= T.let(val, T.nilable(String))
    end 
  end
end

def gist_formula; end
