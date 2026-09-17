class WssaDiag < Formula
  version "1.44"
  sha256 "f33dcf11d5785dbb6ea12c9fcadd6987cfef1542d37294319ff0982b168a293e"

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
