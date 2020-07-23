class Lft
  livecheck do
    url :homepage
    regex(/value="lft-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
