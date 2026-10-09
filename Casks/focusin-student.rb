cask "focusin-student" do
  version "1.4.2"
  sha256 "78cc8d4001d98d4b8cc099f185694a57c70c03061a3fb5d5f601715d6d7a35a0"

  url "https://github.com/marco-crypto-debug/focusin/releases/download/v#{version}/FocusIn-Student.dmg",
      verified: "github.com/marco-crypto-debug/focusin/"
  name "FocusIn Student"
  desc "Classroom screen broadcast client - student app"
  homepage "https://focusin.pages.dev"

  app "StudentApp.app", target: "FocusIn Student.app"

  zap trash: [
    "~/Library/Preferences/com.classroom.student.plist",
    "~/Library/Application Support/FocusIn",
  ]
end
