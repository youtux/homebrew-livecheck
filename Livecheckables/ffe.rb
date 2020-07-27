class Ffe
  livecheck do
    url "https://sourceforge.net/projects/ff-extractor/"
    regex(%r{/ff-extractor/v?(\d+(?:\.\d+)+(?:-\d+)?)/}i)
  end
end
