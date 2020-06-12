class Iftop
  livecheck do
    url "https://www.ex-parrot.com/pdw/iftop/download/"
    regex(/href=.*?iftop-v?(\d+(?:\.\d+)+(?:pre\d+)?)\.t/i)
  end
end
