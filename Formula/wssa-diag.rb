class WssaDiag < Formula
  version "1.37"
  sha256 "6136b0e143bda8722e77da0cb3464379fd11b8ab25713af63580b7752af6de59"

  url "https://techdocs.broadcom.com/content/dam/broadcom/techdocs/us/en/dita/symantec-security-software/web-and-network-security/web-security-service/content/wssa-macos-diags-#{version}.zip"
  desc "Shell script to gather debugging, troubleshooting, and trace log information for Symantec WSSA"
  homepage "https://techdocs.broadcom.com/bin/gethidpage?ux-context-string=wssa-macdiags&appid=wss&language=&format=rendered"
  license "Commercial"

  def install
    bin.install "wssa-diag.sh"
  end

  test do
    system "true"
  end
end
