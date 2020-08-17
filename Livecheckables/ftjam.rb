class Ftjam
  # We check the "ftjam" directory page since versions aren't present in the
  # RSS feed as of writing.
  livecheck do
    url "https://sourceforge.net/projects/freetype/files/ftjam/"
    strategy :page_match
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
