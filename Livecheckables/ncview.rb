class Ncview
  # The stable archive in the formula is fetched over FTP and the website for
  # the software hasn't been updated to list the latest release (it has been
  # years now). We're checking Debian for now because it's potentially better
  # than having no check at all.
  livecheck do
    url "http://ftp.debian.org/debian/pool/main/n/ncview/"
    regex(/href=.*?ncview[._-]v?(\d+(?:\.\d+)+)(?:\+ds)?\.orig\.t/i)
  end
end
