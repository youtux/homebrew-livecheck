class CfrDecompiler
  livecheck do
    url "https://www.benf.org/other/cfr/"
    regex(/href=".*cfr-([0-9_.]+)\.j/)
  end
end
