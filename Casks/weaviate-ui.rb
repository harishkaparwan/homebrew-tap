cask "weaviate-ui" do
  version "1.1.29"

  on_arm do
    url "https://harishkaparwan.github.io/weaviate-ui/desktop/mac/weaviate-ui_#{version}_aarch64.dmg"
    sha256 "3bbd062959d1d448c348356ed7bc5abc2490885d8b44db9a8547c0f1f591bc9b"
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
