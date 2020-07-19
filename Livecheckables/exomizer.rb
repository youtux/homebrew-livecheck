class Exomizer
  livecheck do
    url "https://bitbucket.org/magli143/exomizer/wiki/browse/downloads/"
    regex(/href=.*?exomizer-([0-9.]+)\.zip/i)
  end
end
