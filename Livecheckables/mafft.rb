class Mafft
  # The regex below is intended to avoid releases with trailing "Experimental"
  # text after the link for the archive.
  livecheck :url   => "https://mafft.cbrc.jp/alignment/software/source.html",
            :regex => %r{href=.+?mafft-v?(\d+(?:\.\d+)+)-with-extensions-src\.t.+?\</a\>\s*?\<(?:br[^>]*?|/li|/ul)\>}i
end
