class Gabedit
  # Consider switching back to checking SourceForge releases once we can alter
  # the matched version from `250` to `2.5.0`.
  livecheck do
    url "https://sites.google.com/site/allouchear/Home/gabedit/download"
    regex(/current stable version of gabedit is v?(\d+(?:\.\d+)+)/i)
  end
end
