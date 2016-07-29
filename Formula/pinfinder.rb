require "language/go"

class Pinfinder < Formula
  desc "Recover the restrictions passcode on iOS devices."
  homepage "https://github.com/gwatts/pinfinder"
  url "https://github.com/gwatts/pinfinder/archive/1.4.0.tar.gz"
  sha256 "d747500edf84a64c22c58b4d08e71cd0e9f5a51af4ba971dbe32f925653e8578"
  head "https://github.com/gwatts/pinfinder.git"

  depends_on "go" => :build

  go_resource "github.com/DHowett/go-plist" do
    url "https://github.com/DHowett/go-plist.git",
      :revision => "fec78c8d6756fa37981f204f6bf21d909e24fde9"
  end

  go_resource "golang.org/x/crypto" do
    url "https://go.googlesource.com/crypto.git",
        :revision => "bc89c496413265e715159bdc8478ee9a92fdc265"
  end

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/gwatts").mkpath
    ln_s buildpath, buildpath/"src/github.com/gwatts/pinfinder"
    Language::Go.stage_deps resources, buildpath/"src"

    system "go", "build", "-o", "#{bin}/pinfinder"
  end

  test do
    system true
  end
end
