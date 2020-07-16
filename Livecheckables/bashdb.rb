class Bashdb
  livecheck do
    url "https://sourceforge.net/projects/bashdb/files/bashdb/"
    regex(%r{href=(?:["']|.*?bashdb/)?v?(\d+(?:[.-]\d+)+)/?["' >]}i)
  end
end
