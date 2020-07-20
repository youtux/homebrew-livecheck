class Igv
  livecheck do
    url "https://github.com/igvteam/igv.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end
end
