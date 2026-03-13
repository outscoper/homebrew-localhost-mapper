cask "localhost-mapper" do
  version "1.0.0"

  on_arm do
    sha256 "846b31b79a8ff1c859a997332900bad324fecc099375889767f720791a92b198"
    url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Virtual-Host-Manager-#{version}-arm64.dmg"
  end

  on_intel do
    sha256 "1ad4760ac38744684c884c228a0fe4a98d5711282f7c216b2b4932d89665e6f6"
    url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Virtual-Host-Manager-#{version}.dmg"
  end

  name "Virtual Host Manager"
  desc "Map localhost ports to custom domains using Apache reverse proxy"
  homepage "https://github.com/outscoper/localhost-mapper"

  app "Virtual Host Manager.app"
end
