cask "localhost-mapper" do
  version "1.1.4"

  on_arm do
    sha256 "303987563f281ad0027a23bf3262dbeda5c26e54d9d14de22e1ef46cbef8e2ba"
    url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Localhost-Mapper-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "1be34c2fed99df44fd4841cc544b0fdc67f5cee24e4cbac66b0fd51bf178fb47"
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
