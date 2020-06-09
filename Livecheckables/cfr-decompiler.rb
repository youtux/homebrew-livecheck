class CfrDecompiler
  livecheck do
    url :homepage
    regex(/href=".*cfr-([0-9_.]+)\.j/)
  end
end
