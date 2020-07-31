class Procmail
  # Procmail is no longer developed/maintained and the formula uses tarballs
  # from Apple, so we check this source for new releases. The "version" here is
  # the numeric portion of the archive name (e.g. 14 for procmail-14.tar.gz)
  # instead of the actual procmail version.
  livecheck do
    url "https://opensource.apple.com/tarballs/procmail/"
    regex(/href=.*?procmail[._-]v?(\d+(?:\.\d+)*)\.t/i)
  end
end
