class Bzt
  livecheck do
    url :stable
    regex(/href=.*?bzt-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
