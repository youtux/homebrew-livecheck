class Dvdauthor
  livecheck do
    url "https://sourceforge.net/projects/dvdauthor/"
    regex(%r{/dvdauthor[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
