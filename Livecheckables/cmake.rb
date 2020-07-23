class Cmake
  livecheck do
    url "https://cmake.org/download/"
    regex(/Latest Release \(v?(\d+(?:\.\d+)+)\)/i)
  end
end
