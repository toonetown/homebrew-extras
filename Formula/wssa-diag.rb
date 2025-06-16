class WssaDiag < Formula
  version "1.38"
  sha256 "14f0e37ae8eb829ed7d85fc36ea0f84bdab43d797b79b9b9bc300a93aadb00fe"

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
