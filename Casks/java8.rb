cask 'java8' do
  version '8u241,b07,1f5b5a70bf22433b84d0e960903adac8'
  sha256 '57a13fca47039dcd371158c0ed3265f407ba4184fb53e9cb2a95f8ecc49154ab'

  url "https://download.oracle.com/otn-pub/java/jdk/#{version.csv.first}-#{version.csv.second}/#{version.csv.third}/jdk-#{version.csv.first}-macosx-x64.dmg",
      cookies: {
                 'oraclelicense' => 'accept-securebackup-cookie',
               }
  name 'Oracle Java 8 Standard Edition Development Kit'
  homepage 'https://www.oracle.com/technetwork/java/javase/overview/index.html'

  depends_on macos: '>= :yosemite'

  pkg 'JDK 8 Update 241.pkg'

  uninstall pkgutil: "com.oracle.jdk#{version.csv.first}",
            delete:  [
                       '/Library/Internet\ Plug-Ins/JavaAppletPlugin.plugin',
                       '/Library/PreferencePanes/JavaControlPanel.prefPane',
                     ]

  zap trash: [
               '~/Library/Application Support/Oracle/Java',
               '~/Library/Application Support/com.oracle.java.JavaAppletPlugin.plist',
               '~/Library/Application Support/com.oracle.javadeployment.plist',
             ]

  caveats do
    license 'https://www.oracle.com/technetwork/java/javase/terms/license/javase-license.html'
  end
end
