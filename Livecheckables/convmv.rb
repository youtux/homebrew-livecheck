class Convmv
  livecheck do
    url :homepage
    regex(/href=.*?convmv[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
