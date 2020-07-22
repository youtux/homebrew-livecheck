class Prips
  livecheck do
    url :homepage
    regex(/current version .*?prips.*?v?(\d+(?:\.\d+)+)/i)
  end
end
