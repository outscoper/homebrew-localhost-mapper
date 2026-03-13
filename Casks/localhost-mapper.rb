cask "localhost-mapper" do
  version "1.0.0"
  sha256 "846b31b79a8ff1c859a997332900bad324fecc099375889767f720791a92b198"

  url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Virtual-Host-Manager-#{version}-arm64.dmg"
  name "Virtual Host Manager"
  desc "Map localhost ports to custom domains using Apache reverse proxy"
  homepage "https://github.com/outscoper/localhost-mapper"

  app "Virtual Host Manager.app"
end
