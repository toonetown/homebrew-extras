require 'formula'

class AndroidNdkR8e < Formula
  homepage 'http://developer.android.com/sdk/ndk/index.html'
  version 'r8e'

  if MacOS.prefer_64_bit?
    url "http://dl.google.com/android/ndk/android-ndk-r8e-darwin-x86_64.tar.bz2"
    sha1 '8c8f0d7df5f160c3ef82f2f4836cbcaf18aabf68'
  else
    url "http://dl.google.com/android/ndk/android-ndk-r8e-darwin-x86.tar.bz2"
    sha1 '60536b22b3c09015a4c7072097404a9a1316b242'
  end

  depends_on 'android-sdk'

  def install
    bin.mkpath
    prefix.install Dir['*']

    # Create a dummy script to launch the ndk apps
    ndk_exec = prefix+'ndk-exec.sh'
    ndk_exec.write <<-EOS.undent
      #!/bin/sh
      BASENAME=`basename $0`
      EXEC="#{prefix}/$BASENAME"
      test -f "$EXEC" && exec "$EXEC" "$@"
    EOS
    ndk_exec.chmod 0755
    %w[ndk-build ndk-gdb ndk-stack].each { |app| bin.install_symlink ndk_exec => app }
  end

  def caveats; <<-EOS.undent
    We agreed to the Android NDK License Agreement for you by downloading the NDK.
    If this is unacceptable you should uninstall.

    License information at:
    http://developer.android.com/sdk/terms.html

    Software and System requirements at:
    http://developer.android.com/sdk/ndk/index.html#requirements

    For more documentation on Android NDK, please check:
      #{prefix}/docs
    EOS
  end
end
