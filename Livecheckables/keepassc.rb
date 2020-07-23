class Keepassc
  livecheck do
    url :stable
    regex(/href=.*?keepassc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
