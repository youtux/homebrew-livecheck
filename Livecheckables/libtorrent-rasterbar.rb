class LibtorrentRasterbar
  livecheck do
    url :head
    regex(/^libtorrent[._-]v?(\d+(?:[-_.]\d+)+)$/i)
  end
end
