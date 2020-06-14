class Visp
  livecheck do
    url :homepage
    regex(/href=.*?visp-v?(\d+(?:\.\d+)+)/i)
  end
end
