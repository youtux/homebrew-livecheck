class Eralchemy
  livecheck do
    url :stable
    regex(/href=.*?ERAlchemy-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
