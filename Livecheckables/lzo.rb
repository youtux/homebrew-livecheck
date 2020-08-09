class Lzo
  livecheck do
    url "https://www.oberhumer.com/opensource/lzo/download/"
    regex(/href=.*?lzo[._-]v?([\d.]+)\./i)
  end
end
