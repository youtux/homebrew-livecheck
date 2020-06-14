class MediaInfo
  livecheck do
    url "https://mediaarea.net/download/binary/mediainfo/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?[ '">]}i)
  end
end
