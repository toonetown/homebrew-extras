cask 'luyten-ui' do
  version '0.4.6'
  sha256 '474497e095ba333a7c201df528866e284ba87776a6e7ddd058cc0dadf9b16fce'

  url "https://github.com/toonetown/Luyten/releases/download/v#{version}-osx/Luyten-OSX.zip"
  appcast 'https://github.com/toonetown/Luyten/releases.atom',
          checkpoint: '244db7d3732af845bfa2266a2e7db3455a94376ea291bdcbe2612441411093cf'
  name 'Luyten OS X'
  homepage 'https://deathmarine.github.io/Luyten/'
  license :apache

  app 'Luyten.app'
end
