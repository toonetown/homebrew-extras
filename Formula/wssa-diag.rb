class WssaDiag < Formula
  desc "Shell script to gather debugging, troubleshooting, and trace log information for Symantec WSSA"
  homepage "https://techdocs.broadcom.com/bin/gethidpage?ux-context-string=wssa-macdiags&appid=wss&language=&format=rendered"
  url "https://techdocs.broadcom.com/content/dam/broadcom/techdocs/us/en/dita/symantec-security-software/web-and-network-security/web-security-service/content/wssa-macos-diags.zip"
  version "1.34"
  sha256 "9d2fb663ecda5f19d56872f2ab1a037883d475a83c83a919d347e2cd08c119df"
  license "Commercial"

  def install
    bin.install "wssa-diag.sh"
  end

  test do
    system "true"
  end
end
