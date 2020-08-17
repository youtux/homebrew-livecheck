class Cmuclmtk
  # We check the "cmuclmtk" directory page since versions aren't present in the
  # RSS feed as of writing.
  livecheck do
    url "https://sourceforge.net/projects/cmusphinx/files/cmuclmtk/"
    strategy :page_match
    regex(%r{href=.*?/v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
