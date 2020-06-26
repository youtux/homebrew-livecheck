class Ttyrec
  livecheck do
    url :homepage
    regex(/href=['"]?ttyrec-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
