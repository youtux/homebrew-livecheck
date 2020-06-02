class Augustus
  livecheck do
    url "http://bioinf.uni-greifswald.de/augustus/binaries/"
    regex(/href="augustus-([0-9.]+)\.t/)
  end
end
