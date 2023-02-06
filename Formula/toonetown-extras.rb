class ToonetownExtras < Formula
  desc "Additional homebrew functionality, formulae, and casks"
  homepage "https://github.com/toonetown/homebrew-extras/"
  url "https://github.com/toonetown/homebrew-extras/archive/v1.63.tar.gz"
  sha256 "cb94734751af6537a50d2ebd7a11cb18be99d5ebf104ba89c6bbcd50bdc2e606"
  revision 1

  head "https://github.com/toonetown/homebrew-extras.git", branch: "master"

  skip_clean "bin"

  def install
    prefix.install "lib" => "rubylib"
    prefix.install "script"

    prefix.install "bin"
    (bin+"brew-script").chmod 0755
    (bin+"update-launchctl-env").chmod 0755
    (bin+"update-env").chmod 0755

    (prefix+"etc/profile.d").install "etc/profile.d/01-brew-defaults"
    (prefix+"etc/profile.d").install "etc/profile.d/01-bash-warning"
    system "chsh", "-s", "/bin/bash" if ENV["SHELL"] != "/bin/bash"
  end

  def caveats
    <<~EOS
      To set up the environment variables, run:
        #{prefix}/script/prepare_profile #{HOMEBREW_PREFIX}
    EOS
  end
  
  service do
    run bin/"update-launchctl-env"
    keep_alive true
  end

  test do
    system "true"
  end
end
