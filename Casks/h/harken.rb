cask "harken" do
  version "0.2.0,41"
  sha256 "c05b2731778568b1ad3024aa9ee206ac9048d240c8831267a343fd9936937553"

  url "https://harken.hemisthia.com/updates/Harken-#{version.csv.first}-#{version.csv.second}.zip"
  name "Harken"
  desc "AI dictation, meeting capture, and visual capture"
  homepage "https://harken.hemisthia.com/"

  livecheck do
    url "https://harken.hemisthia.com/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Harken.app"

  uninstall quit: "com.hemisthia.harken"
end
