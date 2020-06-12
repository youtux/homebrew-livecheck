class Procmail
  # We use the patched version obtained from Apple for this
  # formula, so it is appropriate to check for the version
  # number supplied by Apple.
  livecheck do
    url "https://opensource.apple.com/tarballs/procmail/"
    regex(/href=.*?procmail-v?(\d+(?:\.\d+)*)\.t/i)
  end
end
