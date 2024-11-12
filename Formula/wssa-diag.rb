class WssaDiag < Formula
  version "1.35"
  sha256 "146fe459db312681a0e51817246cb8c48fd2ad95e6e2d1791ad0e95538844396"

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
