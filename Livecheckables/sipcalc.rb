class Sipcalc
  livecheck do
    url "http://www.routemeister.net/projects/sipcalc/download.html"
    regex(/href=.*?sipcalc-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
