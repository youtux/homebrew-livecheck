class Exomizer
  livecheck do
    url "https://bitbucket.org/magli143/exomizer/wiki/browse/downloads/"
    regex(/href=.*?exomizer-v?(\d+(?:\.\d+)+)\.zip/i)
  end
end
