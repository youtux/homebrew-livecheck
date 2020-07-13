class Eralchemy
  livecheck do
    url "https://pypi.org/simple/ERAlchemy/"
    regex(/href=.*?ERAlchemy-([0-9,.]+)\.t/)
  end
end
