class Calc
  livecheck do
    url "http://www.isthe.com/chongo/src/calc/"
    regex(/href=.*?v?(\d+(?:\.\d+)+)_IS_LATEST_STABLE"/i)
  end
end
