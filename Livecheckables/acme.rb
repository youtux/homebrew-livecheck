class Acme
  livecheck do
    url "https://sourceforge.net/p/acme-crossass/code-0/HEAD/tree/trunk/docs/Changes.txt?format=raw"
    strategy :page_match
    regex(/New in release v?(\d+(?:\.\d+)+)/i)
  end
end
