class Bzt
  livecheck do
    url :stable
    regex(/href=.*?bzt[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
