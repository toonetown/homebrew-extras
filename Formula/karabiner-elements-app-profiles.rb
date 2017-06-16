class KarabinerElementsAppProfiles < Formula
  desc "Add app-specific behavior in Karabiner-Elements"
  homepage "https://github.com/nriley/Karabiner-Elements-App-Profiles"
  url "https://github.com/nriley/Karabiner-Elements-App-Profiles/archive/v1.0.tar.gz"
  sha256 "f12fffd5da5b7ccb9fb3179cf999bd3948e2b9243dfc671973a8de4f8db6ea61"
  head "https://github.com/nriley/Karabiner-Elements-App-Profiles.git"

  depends_on :xcode => :build

  def install
    xcodebuild "SYMROOT=build"
    bin.install "./build/Release/Karabiner-Elements-App-Profiles"
    inreplace "net.sabi.Karabiner-Elements-App-Profiles.plist", "/usr/local/bin", HOMEBREW_PREFIX/"bin"
    prefix.install "net.sabi.Karabiner-Elements-App-Profiles.plist"
  end

  def plist
    (prefix/"net.sabi.Karabiner-Elements-App-Profiles.plist").read
  end

  test do
    system true
  end
end
