class Xxhash
  livecheck do
    url "https://github.com/Cyan4973/xxHash/releases"
    regex(%r{href="/Cyan4973/xxHash/tree/v?([0-9\.]+)})
  end
end
