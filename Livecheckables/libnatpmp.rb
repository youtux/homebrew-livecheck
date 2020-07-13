class Libnatpmp
  livecheck do
    url "http://miniupnp.free.fr/files/"
    regex(/href=.*?libnatpmp[._-]v?(\d{6,8})\.t/i)
  end
end
