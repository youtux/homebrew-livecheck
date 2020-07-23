class Flowgrind
  livecheck do
    url :homepage
    regex(/Latest version is flowgrind-v?(\d+(?:\.\d+)+)/i)
  end
end
