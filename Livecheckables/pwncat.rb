class Pwncat
  livecheck do
    url :stable
    regex(/href=.*?pwncat-(\d+(?:\.\d+)+)\.t/i)
  end
end
