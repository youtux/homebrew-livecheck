class Zshdb
  livecheck do
    url "https://sourceforge.net/projects/bashdb/files/zshdb/"
    strategy :page_match
    regex(%r{href=(?:["']|.*?zshdb/)?v?(\d+(?:[.-]\d+)+)/?["' >]}i)
  end
end
