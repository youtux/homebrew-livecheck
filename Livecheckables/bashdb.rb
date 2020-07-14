class Bashdb
  livecheck do
    url "https://sourceforge.net/projects/bashdb/files/bashdb/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+[._-](?:\d+(?:\.\d+)+))/?["' >]}i)
  end
end
