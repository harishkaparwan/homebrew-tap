cask "weaviate-ui" do
  version "0.1.0"

  on_arm do
    url "https://harishkaparwan.github.io/weaviate-ui/desktop/mac/weaviate-ui_#{version}_aarch64.dmg"
    sha256 "e4b23f678ff7824f524e8a924132c0a9657ead9ee3b85d06fbbf1ec87d985bf4"
  end

  name "Weaviate UI"
  desc "Workbench for inspecting and querying Weaviate databases"
  homepage "https://github.com/harishkaparwan/weaviate-ui"

  app "weaviate-ui.app"

  zap trash: [
    "~/Library/Application Support/com.harishkaparwan.weaviate-ui",
    "~/Library/Caches/com.harishkaparwan.weaviate-ui",
    "~/Library/Preferences/com.harishkaparwan.weaviate-ui.plist",
    "~/Library/Saved Application State/com.harishkaparwan.weaviate-ui.savedState",
  ]
end
