class Knot
  livecheck do
    url "https://secure.nic.cz/files/knot-dns/"
    regex(/href="knot-([0-9\.]+)\.t/)
  end
end
