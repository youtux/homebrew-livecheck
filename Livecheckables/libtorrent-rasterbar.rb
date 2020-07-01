class LibtorrentRasterbar
  livecheck do
    url :head
    regex(/^libtorrent.v?(\d+(?:[-_.]\d+)+)$/i)
  end
end
