class Zebra
  livecheck do
    url "https://www.indexdata.com/resources/software/zebra"
    regex(%r{>Latest:</strong>.*?v?(\d+(?:\.\d+)+)<}i)
  end
end
