class Tth
  livecheck do
    url "http://hutchinson.belmont.ma.us/tth/Version"
    regex(/"([0-9,.]+)"/i)
  end
end
