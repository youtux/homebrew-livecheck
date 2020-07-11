class Xxhash
  livecheck do
    url "https://github.com/Cyan4973/xxHash/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
