class Augustus
  livecheck do
    url "http://bioinf.uni-greifswald.de/augustus/binaries/"
    regex(/href=.*?augustus-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
