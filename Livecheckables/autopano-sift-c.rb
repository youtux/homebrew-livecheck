class AutopanoSiftC
  # We check the "autopano-sift-C" directory page since versions aren't present
  # in the RSS feed as of writing.
  livecheck do
    url "https://sourceforge.net/projects/hugin/files/autopano-sift-C/"
    strategy :page_match
    regex(%r{href=.*?autopano-sift-C[._-]v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
