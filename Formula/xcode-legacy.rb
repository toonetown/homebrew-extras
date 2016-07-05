require "formula"

class XcodeLegacy < Formula
  version "1.7"
  homepage "https://github.com/devernay/xcodelegacy"
  url "https://github.com/devernay/xcodelegacy.git", :revision => "v#{version}"
  head "https://github.com/devernay/xcodelegacy.git", :branch => "master"

  skip_clean "bin"

  def install
    chmod 0755, "XcodeLegacy.sh"
    bin.install "XcodeLegacy.sh" => "xcode-legacy"
  end
end
