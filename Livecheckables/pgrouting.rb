class Pgrouting
  livecheck do
    url "https://github.com/pgRouting/pgrouting/releases/latest"
    regex(%r{href=.*?/tag/v?(\d+(?:\.\d+)+)["' >]}i)
  end
end
