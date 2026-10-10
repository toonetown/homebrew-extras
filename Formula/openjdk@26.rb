class OpenjdkAT26 < Formula
  desc "Development kit for the Java programming language"
  homepage "https://openjdk.java.net/"
  license "GPL-2.0-only" => { with: "Classpath-exception-2.0" }

  livecheck do
    skip "Archived release"
  end

  # From https://jdk.java.net/archive/
  if Hardware::CPU.arm?
    url "https://download.java.net/java/GA/jdk26.0.2.1/3b8e6c7ec6274148a7aa15e7e7dfb53c/1/GPL/openjdk-26.0.2.1_macos-aarch64_bin.tar.gz"
    sha256 "3a61f9bbfbf2e09308aa4b1a5c044fcbc82f6ba49e074be49a7b7911e1f00efd"
  else
    url "https://download.java.net/java/GA/jdk26.0.2.1/3b8e6c7ec6274148a7aa15e7e7dfb53c/1/GPL/openjdk-26.0.2.1_macos-x64_bin.tar.gz"
    sha256 "5ec3817530ffa1c38f15a55609a2767335bbd0c59ea8ce41aad68d3cd620c0ae"
  end

  keg_only :versioned_formulae

  depends_on :macos

  def install
    # Homebrew descends into the single top-level "jdk-26.0.2.1.jdk" directory, so
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
        sudo ln -sfn #{opt_libexec}/openjdk.jdk /Library/Java/JavaVirtualMachines/openjdk@26.jdk
    EOS
  end

  test do
    assert_match "26.0.2.1", shell_output("#{bin}/java -version 2>&1")
  end
end
