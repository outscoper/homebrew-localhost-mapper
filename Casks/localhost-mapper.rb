cask "localhost-mapper" do
  version "1.0.0"
  sha256 "d9d6b1cee91289b372481ea2be3b79b75816d368a97e6e928569f62fd569a3f4"

  url "https://github.com/outscoper/localhost-mapper/releases/download/v#{version}/Virtual-Host-Manager-#{version}-arm64.dmg"
  name "Virtual Host Manager"
  desc "Map localhost ports to custom domains using Apache reverse proxy"
  homepage "https://github.com/outscoper/localhost-mapper"

  app "Virtual Host Manager.app"
end
