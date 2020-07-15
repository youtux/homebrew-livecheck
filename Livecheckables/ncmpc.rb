class Ncmpc
  livecheck do
    url "https://www.musicpd.org/download/ncmpc/0/"
    regex(/href=.*?ncmpc-([0-9,.]+)\.t/)
  end
end
