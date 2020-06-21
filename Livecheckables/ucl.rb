class Ucl
  livecheck do
    url "https://www.oberhumer.com/opensource/ucl/download/"
    regex(/href=.*?ucl-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
