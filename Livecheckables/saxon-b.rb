class SaxonB
  # We check the "Saxon-B" directory page since versions aren't present in the
  # RSS feed as of writing.
  livecheck do
    url "https://sourceforge.net/projects/saxon/files/Saxon-B/"
    strategy :page_match
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
