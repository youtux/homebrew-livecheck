class Mplayer
  livecheck do
    url "https://mplayerhq.hu/MPlayer/releases/"
    regex(/href=.*?MPlayer-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
