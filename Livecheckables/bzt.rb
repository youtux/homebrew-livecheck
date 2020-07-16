class Bzt
  livecheck do
    url :stable
    regex(/href=.*?bzt-([0-9.]+)\.t/)
  end
end
