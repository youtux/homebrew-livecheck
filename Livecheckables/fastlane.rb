class Fastlane
  livecheck do
    url :head
    regex(/^([\d.]+)$/i)
  end
end
