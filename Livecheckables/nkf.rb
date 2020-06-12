class Nkf
  livecheck do
    url "https://osdn.net/projects/nkf/releases/rss"
    regex(/<osdn:file url=.*?nkf-v?(\d+(?:\.\d+)+(?:[a-z])?)\.t/i)
  end
end
