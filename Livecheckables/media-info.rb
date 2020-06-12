class MediaInfo
  livecheck do
    url "https://old.mediaarea.net/download/binary/mediainfo/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)/i)
  end
end
