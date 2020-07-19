class Geeqie
  livecheck do
    url :homepage
    regex(/href=.*?geeqie-([0-9.]+)\.t/i)
  end
end
