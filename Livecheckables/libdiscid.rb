class Libdiscid
  livecheck do
    url "http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid/"
    regex(/href=.*?libdiscid-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
