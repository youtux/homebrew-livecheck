class KnotResolver
  livecheck do
    url "https://secure.nic.cz/files/knot-resolver/"
    regex(/href=.*?knot-resolver-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
