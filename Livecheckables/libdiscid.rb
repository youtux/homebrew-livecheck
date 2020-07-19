class Libdiscid
  livecheck do
    url "http://ftp.musicbrainz.org/pub/musicbrainz/libdiscid/"
    regex(/href=.*?libdiscid-([0-9.]+)\.t/i)
  end
end
