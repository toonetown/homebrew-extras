cask "android-ndk@28c" do
  version "28c"
  sha256 "a7a2513d4c229f814e1a3bc528fe04ed0807b63f57a6d21f09d75e8362e44a20"

  url "https://dl.google.com/android/repository/android-ndk-r#{version}-darwin.dmg"
  name "Android NDK"
  desc "Toolset to implement parts of Android apps in native code"
  homepage "https://developer.android.com/ndk/index.html"

  livecheck do
    url "https://developer.android.com/ndk/downloads"
    regex(/Latest\b(?!\s+Beta|\s+Pre-Release).*?r(\d+[a-z]?)/i)
  end
  
  depends_on :macos

  command_wrapper "ndk-build", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-build"
  command_wrapper "ndk-depends", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-depends"
  command_wrapper "ndk-gdb", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-gdb"
  command_wrapper "ndk-stack", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-stack"
  command_wrapper "ndk-which", executable: "#{HOMEBREW_PREFIX}/share/android-ndk/ndk-which"

  preflight_steps do
    symlink "AndroidNDK*.app/Contents/NDK", "share/android-ndk",
            target_base: :homebrew_prefix, source_glob: true, overwrite: true
  end

  uninstall delete: "#{HOMEBREW_PREFIX}/share/android-ndk"

  # No zap stanza required

  caveats <<~EOS
    You may want to add to your profile:
       'export ANDROID_NDK_HOME="#{HOMEBREW_PREFIX}/share/android-ndk"'
  EOS
end
