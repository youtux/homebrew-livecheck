class Geeqie
  livecheck do
    url :homepage
    regex(/href=.*?geeqie-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
