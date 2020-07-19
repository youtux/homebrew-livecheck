class Eralchemy
  livecheck do
    url :stable
    regex(/href=.*?ERAlchemy-([0-9,.]+)\.t/i)
  end
end
