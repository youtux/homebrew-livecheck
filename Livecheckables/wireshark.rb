class Wireshark
  livecheck do
    url "https://www.wireshark.org/download.html"
    regex(/Stable Release \((\d+(?:\.\d+)*)/)
  end
end
