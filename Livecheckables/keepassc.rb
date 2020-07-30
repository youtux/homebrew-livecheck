class Keepassc
  livecheck do
    url :stable
    regex(/href=.*?keepassc[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
