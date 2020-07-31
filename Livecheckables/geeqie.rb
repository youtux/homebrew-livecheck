class Geeqie
  livecheck do
    url :homepage
    regex(/href=.*?geeqie[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
