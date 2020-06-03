class Lft
  livecheck do
    url "https://pwhois.org/lft/"
    regex(/value="lft-([0-9.]+)\.t/)
  end
end
