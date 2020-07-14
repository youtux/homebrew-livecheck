class Remake
  livecheck do
    url "https://sourceforge.net/projects/bashdb/files/remake/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+%2Bdbg[._-](?:\d+(?:\.\d+)+))/?["' >]}i)
  end
end
