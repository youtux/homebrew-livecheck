class Ii
  livecheck do
    url :homepage
    regex(/href=.*?ii-([0-9.]+)\.t/)
  end
end
