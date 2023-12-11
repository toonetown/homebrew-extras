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
    attr_rw :gist_hash, :gist_file, :gist_revision, :install_name
  end
end

def gist_formula; end
