class Fastlane
  livecheck do
    url "https://github.com/fastlane/fastlane.git"
    regex(/^([\d\.]+)$/)
  end
end
