class Inspircd
  livecheck do
    url "https://github.com/inspircd/inspircd.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
