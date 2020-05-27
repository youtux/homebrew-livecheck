class Conan
  livecheck do
    url "https://github.com/conan-io/conan/releases"
    regex(%r{Latest.*?href="/conan-io/conan/tree/v?([0-9\.]+)}m)
  end
end
