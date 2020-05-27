class Exomizer
  livecheck do
    url "https://bitbucket.org/magli143/exomizer/wiki/browse/downloads/"
    regex(%r{href=".*?/exomizer-([0-9\.]+)\.z})
  end
end
