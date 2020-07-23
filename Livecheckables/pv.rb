class Pv
  livecheck do
    url :homepage
    regex(/pv-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
