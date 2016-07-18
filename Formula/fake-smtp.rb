class FakeSmtp < Formula
  desc "Fake SMTP Server with GUI for testing emails in applications"
  homepage "http://nilhcem.github.io/FakeSMTP/"
  url "http://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip"
  sha256 "afd49c9ba48ee44b9c7e0d3272ebdec11459ab3819999d1e6a46acd678332f9d"
  version "2.0"

  bottle :unneeded

  def install
    libexec.install "fakeSMTP-#{version}.jar"
    bin.write_jar_script libexec/"fakeSMTP-#{version}.jar", "fake-smtp"
  end
  
end
