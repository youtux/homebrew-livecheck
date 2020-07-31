class Pv
  livecheck do
    url :homepage
    regex(/pv[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
