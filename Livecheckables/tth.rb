class Tth
  livecheck do
    url "http://hutchinson.belmont.ma.us/tth/Version"
    regex(/"v?(\d+(?:\.\d+)+)"/i)
  end
end
