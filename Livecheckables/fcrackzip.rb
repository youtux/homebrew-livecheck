class Fcrackzip
  livecheck do
    url "http://oldhome.schmorp.de/marc/data/"
    regex(/href=.*?fcrackzip-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
