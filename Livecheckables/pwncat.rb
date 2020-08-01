class Pwncat
  livecheck do
    url :stable
    regex(/href=.*?pwncat[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
