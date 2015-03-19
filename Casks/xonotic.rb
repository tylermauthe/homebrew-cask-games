cask :v1 => 'xonotic' do
  version '0.8.0'
  sha256 '0a87c808827a8b234f2324b468ecb643aa48a6fd43322a29e616610dca316370'

  url "http://dl.xonotic.org/xonotic-#{version}.zip"
  name 'Xonotic'
  homepage 'http://www.xonotic.org/'
  license :gpl

  suite 'Xonotic'
end
