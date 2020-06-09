class Rsstail
  livecheck do
    url :homepage
    regex(/Latest release.*HREF="rsstail-([0-9.]+)\.t/)
  end
end
