class Libosip
  livecheck do
    url :stable
    regex(/href=.*?libosip2[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
