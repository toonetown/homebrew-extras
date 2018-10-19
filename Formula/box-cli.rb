class BoxCli < Formula
  # To get the hash value, open the pkg installer from their site and look for the "SL" value in the postinstall script
  url_hash="91g049p6fkhksd9d8438mrft1om9wu7r"
  desc "Manage and interact with Box services"
  homepage "https://developer.box.com/docs/box-cli"
  url "https://cloud.box.com/shared/static/#{url_hash}"
  version "1.3.0"
  sha256 "dc744b09a77eaf8f0bc4506d4b81b081e28a184024007edbb2c1be91c43b3c7f"

  bottle :unneeded

  def install
    (lib/"boxcli").install Dir["*"]
    bin.install_symlink "#{lib}/boxcli/box"
  end

  test do
    system "true"
  end
end
