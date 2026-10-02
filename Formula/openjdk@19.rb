class OpenjdkAT19 < Formula
  desc "Development kit for the Java programming language"
  homepage "https://openjdk.java.net/"
  license "GPL-2.0-only" => { with: "Classpath-exception-2.0" }

  livecheck do
    skip "Archived release"
  end

  # From https://jdk.java.net/archive/
  if Hardware::CPU.arm?
    url "https://download.java.net/java/GA/jdk19.0.1/afdd2e245b014143b62ccb916125e3ce/10/GPL/openjdk-19.0.1_macos-aarch64_bin.tar.gz"
    sha256 "915054b18fc17216410cea7aba2321c55b82bd414e1ef3c7e1bafc7beb6856c8"
  else
    url "https://download.java.net/java/GA/jdk19.0.1/afdd2e245b014143b62ccb916125e3ce/10/GPL/openjdk-19.0.1_macos-x64_bin.tar.gz"
    sha256 "469af195906979f96c1dc862c2f539a5e280d0daece493a95ebeb91962512161"
  end

  keg_only :versioned_formulae

  depends_on :macos

  def install
    # Homebrew descends into the single top-level "jdk-19.0.1.jdk" directory, so
    # the current directory is the bundle itself (Contents/Info.plist, etc.).
    (libexec/"openjdk.jdk").install Dir["*"]
    jdk = libexec/"openjdk.jdk/Contents/Home"

    bin.install_symlink Dir[jdk/"bin/*"]
    include.install_symlink Dir[jdk/"include/*.h"]
    include.install_symlink Dir[jdk/"include/darwin/*.h"]
    man1.install_symlink Dir[jdk/"man/man1/*"]
  end

  def caveats
    <<~EOS
      For the system Java wrappers to find this JDK, symlink it with
        sudo ln -sfn #{opt_libexec}/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk@19.jdk
    EOS
  end

  test do
    assert_match "19.0.1", shell_output("#{bin}/java -version 2>&1")
  end
end
