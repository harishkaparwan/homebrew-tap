cask "weaviate-ui" do
  version "2.0.0"

  on_arm do
    url "https://harishkaparwan.github.io/weaviate-ui/desktop/2.0.0/mac/weaviate-ui_2.0.0_aarch64.dmg"
    sha256 "fb1014110e0f7447cde0321aee828f58a9120b3ed175e59e27d778fb0aa63cf8"
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
