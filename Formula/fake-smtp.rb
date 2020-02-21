class FakeSmtp < Formula
  desc "Fake SMTP Server with GUI for testing emails in applications"
  homepage "https://nilhcem.github.io/FakeSMTP/"
  url "https://nilhcem.github.com/FakeSMTP/downloads/fakeSMTP-latest.zip"
  version "2.0"
  sha256 "afd49c9ba48ee44b9c7e0d3272ebdec11459ab3819999d1e6a46acd678332f9d"

  bottle :unneeded

  def install
    libexec.install "fakeSMTP-#{version}.jar"
    bin.write_jar_script libexec/"fakeSMTP-#{version}.jar", "fake-smtp"
  end

  plist_options :manual => "fake-smtp"

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
      <string>#{plist_name}</string>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <false/>
      <key>ProgramArguments</key>
      <array>
        <string>/usr/bin/java</string>
        <string>-Djava.awt.headless=true</string>
        <string>-jar</string>
        <string>#{libexec}/fakeSMTP-#{version}.jar</string>
        <string>-s</string>
        <string>-b</string>
        <string>-m</string>
        <string>-a</string>
        <string>127.0.0.1</string>
      </array>
      <key>ServiceDescription</key>
      <string>Fake SMTP Server</string>
      <key>StandardErrorPath</key>
      <string>#{var}/log/fake-smtp.log</string>
      <key>StandardOutPath</key>
      <string>#{var}/log/fake-smtp.log</string>
    </dict>
    </plist>
  EOS
  end

  test do
    system "true"
  end
end
