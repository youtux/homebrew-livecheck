class Dvdauthor
  livecheck do
    url "https://sourceforge.net/projects/dvdauthor/"
    regex(%r{/dvdauthor-v?(\d+(?:\.\d+)+)\.t}i)
  end
end
