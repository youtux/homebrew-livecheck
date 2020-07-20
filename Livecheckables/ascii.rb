class Ascii
  livecheck do
    url :homepage
    regex(/ascii-(\d+(?:\.\d+)+)/i)
  end
end
