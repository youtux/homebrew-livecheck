class NanopbGenerator
  livecheck do
    url "https://jpa.kapsi.fi/nanopb/download/"
    regex(/href=.*?nanopb-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
