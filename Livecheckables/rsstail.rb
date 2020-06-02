class Rsstail
  livecheck do
    url "https://www.vanheusden.com/rsstail/"
    regex(/Latest release.*HREF="rsstail-([0-9.]+)\.t/)
  end
end
