class Poppler
  livecheck do
    url :homepage
    regex(/href=.*?poppler[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
