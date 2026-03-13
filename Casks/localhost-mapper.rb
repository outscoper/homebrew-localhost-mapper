cask "localhost-mapper" do
  version "1.0.0"

  on_arm do
    sha256 "3d62a5b6e071d6be0672e3fa25245219e8677e49d38f1f48ea7aec0acc2b395e"
    url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Localhost-Mapper-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "3d62a5b6e071d6be0672e3fa25245219e8677e49d38f1f48ea7aec0acc2b395e"
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
