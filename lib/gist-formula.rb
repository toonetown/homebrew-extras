class GistFormula < Formula
  def initialize(*)
    cls=self.class
    raise FormulaSpecificationError, "Requires a gist_hash" unless cls.gist_hash
    raise FormulaSpecificationError, "Requires a gist_file" unless cls.gist_file
    raise FormulaSpecificationError, "Requires a gist_revision" unless cls.gist_revision

    cls.homepage "https://gist.github.com/toonetown/#{cls.gist_hash}"
    cls.url "https://gist.github.com/#{cls.gist_hash}.git", :revision => cls.gist_revision
    cls.head "https://gist.github.com/#{cls.gist_hash}.git", :branch => "master"
    cls.skip_clean "bin"

    super
  end

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
