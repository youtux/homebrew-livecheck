class Exiv2
  livecheck do
    url "https://www.exiv2.org/builds/"
    regex(/href=.*?exiv2[._-]v?(\d+(?:\.\d+)+)-Source\.t/i)
  end
end
