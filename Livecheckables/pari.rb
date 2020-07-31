class Pari
  livecheck do
    url "https://pari.math.u-bordeaux.fr/pub/pari/unix/"
    regex(/pari[._-]v?(\d+\.\d+\.\d+)/i)
  end
end
