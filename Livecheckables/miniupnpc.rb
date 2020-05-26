class Miniupnpc
  # We only match versions with only a major/minor since versions like 2.1 are
  # stable and versions like 2.1.20191224 are unstable/development releases.
  livecheck do
    url "https://miniupnp.tuxfamily.org/files/"
    regex(/href=.+?miniupnpc-v?(\d+\.\d+)\.t/)
  end
end
