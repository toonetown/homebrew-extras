# -*- ruby -*-

require 'formula'
require 'fileutils'

USE_HOMEBREW_RUBY = true

module RubyBin
  def ruby_bin
    USE_HOMEBREW_RUBY ? Formula["ruby"].opt_bin: "/usr/bin"
  end
end

class RubyGemsDownloadStrategy < AbstractDownloadStrategy
  include RubyBin

  def fetch
    ohai "Fetching xcpretty from gem source"
    cache.cd do
      ENV['GEM_SPEC_CACHE'] = "#{cache}/gem_spec_cache"
      system "#{ruby_bin}/gem", "fetch", "xcpretty", "--version", gem_version
    end
  end

  def cached_location
    Pathname.new("#{cache}/xcpretty-#{gem_version}.gem")
  end

  def cache
    @cache ||= HOMEBREW_CACHE
  end

  def gem_version
    return @version if defined?(@version) && @version
    @version = @resource.version if defined?(@resource)
    raise "Unable to determine version; did Homebrew change?" unless @version
    @version
  end

  def clear_cache
    cached_location.unlink if cached_location.exist?
  end
end

class GemXcpretty < Formula
  include RubyBin

  url "xcpretty", :using => RubyGemsDownloadStrategy
  version "0.3.0"
  depends_on "ruby"

  def install
    # Copy user's RubyGems config to temporary build home.
    buildpath_gemrc = "#{ENV['HOME']}/.gemrc"
    if File.exists?('/Users/ntoone/.gemrc') && !File.exists?(buildpath_gemrc)
      FileUtils.cp('/Users/ntoone/.gemrc', buildpath_gemrc)
    end

    # set GEM_HOME and GEM_PATH to make sure we package all the dependent gems
    # together without accidently picking up other gems on the gem path since
    # they might not be there if, say, we change to a different rvm gemset
    ENV['GEM_HOME']="#{prefix}"
    ENV['GEM_PATH']="#{prefix}"

    # Use /usr/local/bin at the front of the path instead of Homebrew shims,
    # which mess with Ruby's own compiler config when building native extensions
    if defined?(HOMEBREW_SHIMS_PATH)
      ENV['PATH'] = ENV['PATH'].sub(HOMEBREW_SHIMS_PATH.to_s, '/usr/local/bin')
    end

    system "#{ruby_bin}/gem", "install", cached_download,
             "--no-document",
             "--no-wrapper",
             "--no-user-install",
             "--install-dir", prefix,
             "--bindir", bin

    raise "gem install 'xcpretty' failed with status #{$?.exitstatus}" unless $?.success?

    bin.rmtree if bin.exist?
    bin.mkpath

    brew_gem_prefix = prefix+"gems/xcpretty-#{version}"

    completion_for_bash = Dir[
                            "#{brew_gem_prefix}/completion{s,}/xcpretty.{bash,sh}",
                            "#{brew_gem_prefix}/**/xcpretty{_,-}completion{s,}.{bash,sh}"
                          ].first
    bash_completion.install completion_for_bash if completion_for_bash

    completion_for_zsh = Dir[
                           "#{brew_gem_prefix}/completions/xcpretty.zsh",
                           "#{brew_gem_prefix}/**/xcpretty{_,-}completion{s,}.zsh"
                         ].first
    zsh_completion.install completion_for_zsh if completion_for_zsh

    gemspec = Gem::Specification::load("#{prefix}/specifications/xcpretty-#{version}.gemspec")
    ruby_libs = Dir.glob("#{prefix}/gems/*/lib")
    gemspec.executables.each do |exe|
      file = Pathname.new("#{brew_gem_prefix}/#{gemspec.bindir}/#{exe}")
      (bin+file.basename).open('w') do |f|
        f << <<-RUBY
#!#{ruby_bin}/ruby --disable-gems
ENV['GEM_HOME']="#{prefix}"
ENV['GEM_PATH']="#{prefix}"
require 'rubygems'
$:.unshift(#{ruby_libs.map(&:inspect).join(",")})
load "#{file}"
        RUBY
      end
    end
  end
end
