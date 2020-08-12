class Weboob
  livecheck do
    url "https://git.weboob.org/weboob/weboob.git"
    regex(/^v?(\d+(?:\.(?:\d+|[a-z])+))$/i)
  end
end
