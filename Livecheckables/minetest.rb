class Minetest
  livecheck do
    url "https://github.com/minetest/minetest/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
