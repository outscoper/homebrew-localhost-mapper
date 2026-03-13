cask "localhost-mapper" do
  version "1.0.0"

  on_arm do
    sha256 "d8c38b6e84489e06abe0b88eca2402df8d416f6eccebc41dee40a7dc97d63714"
    url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Localhost-Mapper-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "4e95e993b732747a284cff1eeccb94ede240944004e0ad8bba2c36e9e2773fc3"
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
