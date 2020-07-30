class Flowgrind
  livecheck do
    url :homepage
    regex(/Latest version is flowgrind[._-]v?(\d+(?:\.\d+)+)/i)
  end
end
