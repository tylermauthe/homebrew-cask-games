cask :v1 => 'xonotic' do
  version '0.8.0'
  sha256 '0a87c808827a8b234f2324b468ecb643aa48a6fd43322a29e616610dca316370'

  url "http://dl.xonotic.org/xonotic-#{version}.zip"
  name 'Xonotic'
  homepage 'http://www.xonotic.org/'
  license :gpl

  postflight do
    frameworks_dir = "#{ENV['HOME']}/Library/Frameworks"
    unless File.directory?(frameworks_dir)
      FileUtils.mkdir(frameworks_dir)
    end
    framework_link = "#{frameworks_dir}/SDL2.framework"
    unless File.exist?(framework_link)
      system(
        '/bin/ln',
        '-s',
        "/opt/homebrew-cask/Caskroom/xonotic/#{version}/Xonotic/Xonotic.app/Contents/Frameworks/SDL2.framework",
        framework_link
      )
    end
  end

  suite 'Xonotic'
end
