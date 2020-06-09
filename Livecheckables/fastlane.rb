class Fastlane
  livecheck do
    url :head
    regex(/^([\d.]+)$/)
  end
end
