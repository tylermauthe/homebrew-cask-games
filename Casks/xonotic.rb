cask 'xonotic' do
  version '0.8.1'
  sha256 'be8bcc41e2993a2f26d4d04c65a7eab810443bd98b11b45e482ffdbbf284c46f'

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
