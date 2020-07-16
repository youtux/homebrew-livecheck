class Ttyrec
  livecheck do
    url :homepage
    regex(/href=["']?ttyrec[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
