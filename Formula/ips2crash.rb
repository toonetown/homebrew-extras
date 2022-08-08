class Ips2crash < Formula
  desc "macOS command-line tool to convert a .ips file to a legacy .crash log file"
  homepage "https://github.com/packagesdev/ips2crash"
  head "https://github.com/packagesdev/ips2crash.git"

  depends_on xcode: :build

  def install
    xcodebuild "-project", "tool_ips2crash/ips2crash.xcodeproj", "SYMROOT=build"
    bin.install "./tool_ips2crash/build/Release/ips2crash"
  end

  test do
    system true
  end
end
