class Nzbget
  livecheck do
    url "https://github.com/nzbget/nzbget.git"
    regex(/^v?(\d+(?:\.\d+)+)$/)
  end
end
