class Dvdauthor
  livecheck do
    url :stable
    regex(%r{url=.*?/dvdauthor[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
