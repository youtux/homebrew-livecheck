class NanopbGenerator
  livecheck do
    url "https://jpa.kapsi.fi/nanopb/download/"
    regex(/href="nanopb-([0-9\.]+)\.t/)
  end
end
