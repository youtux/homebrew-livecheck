class Cmake
  livecheck do
    url "https://cmake.org/download/"
    regex(/Latest Release \(([0-9.]+)\)/i)
  end
end
