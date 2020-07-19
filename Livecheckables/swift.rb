class Swift
  livecheck do
    url "https://swift.org/download/"
    regex(/Releases<.*?>Swift ([0-9.]+)</im)
  end
end
