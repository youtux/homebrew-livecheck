class Dterm
  livecheck do
    url :homepage
    regex(/href=.+dterm-v?(\d+(?:\.\d+)+)\.t/)
  end
end
