class Lwtools
  livecheck do
    url :homepage
    regex(/href=.*?lwtools-([0-9.]+)\.t/)
  end
end
