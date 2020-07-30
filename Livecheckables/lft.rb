class Lft
  livecheck do
    url :homepage
    regex(/value="lft[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
