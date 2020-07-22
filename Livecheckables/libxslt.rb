class Libxslt
  livecheck do
    url "http://xmlsoft.org/sources/"
    regex(/href=.*?libxslt-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
