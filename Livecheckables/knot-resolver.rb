class KnotResolver
  livecheck do
    url "https://secure.nic.cz/files/knot-resolver/"
    regex(/href="knot-resolver-([0-9.]+)\.t/)
  end
end
