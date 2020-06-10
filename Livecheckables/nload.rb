class Nload
  livecheck do
    url :homepage
    regex(/href=.+?nload-v?(\d+(?:\.\d+)+)\.t/)
  end
end
