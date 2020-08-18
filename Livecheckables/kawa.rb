class Kawa
  livecheck do
    url :stable
    regex(/href=.*?kawa[._-]v?(\d+(?:\.\d+)+)\.(?:t|zip)/i)
  end
end
