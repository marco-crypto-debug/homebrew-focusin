cask "focusin-teacher" do
  version "1.4.2"
  sha256 "6e30e042f76d072c0fe71b168e221312ea3d1c06e49e68bd4187f4c691505b22"

  url "https://github.com/marco-crypto-debug/focusin/releases/download/v#{version}/FocusIn-Teacher.dmg",
      verified: "github.com/marco-crypto-debug/focusin/"
  name "FocusIn Teacher"
  desc "Classroom screen broadcast & management - teacher app"
  homepage "https://focusin.pages.dev"

  app "TeacherApp.app", target: "FocusIn Teacher.app"

  zap trash: [
    "~/Library/Preferences/com.classroom.teacher.plist",
    "~/Library/Application Support/FocusIn",
  ]
end
