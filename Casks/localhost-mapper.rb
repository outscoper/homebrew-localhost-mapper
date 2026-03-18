cask "localhost-mapper" do
  version "1.1.3"

  on_arm do
    sha256 "dc57dca6cc9ebbde5b425a87c85954b04f3c570a0fa22ea4d100a330c63e6601"
    url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Localhost-Mapper-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "dd52b7229b694194274571345827cadc1fc518f65a40a150e7c79903c528724a"
    url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Localhost-Mapper-#{version}.dmg"
  end

  name "Localhost Mapper"
  desc "Map localhost ports to custom domains using Apache reverse proxy"
  homepage "https://github.com/outscoper/localhost-mapper"

  app "Localhost Mapper.app"

  postflight do
    system_command "/usr/bin/xattr",
      args: ["-dr", "com.apple.quarantine", "#{appdir}/Localhost Mapper.app"],
      sudo: false
    system_command "/usr/bin/mdimport",
      args: ["#{appdir}/Localhost Mapper.app"],
      sudo: false
  end
end
