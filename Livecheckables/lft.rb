class Lft
  livecheck do
    url :homepage
    regex(/value="lft-([0-9.]+)\.t/)
  end
end
