class Zebra
  livecheck do
    url "https://www.indexdata.com/resources/software/zebra"
    regex(%r{>Latest:</strong>.*?([0-9.]+)<}i)
  end
end
