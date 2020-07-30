class Eralchemy
  livecheck do
    url :stable
    regex(/href=.*?ERAlchemy[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
