class Remake
  livecheck do
    url "https://sourceforge.net/projects/bashdb/files/remake/"
    strategy :page_match
    regex(%r{href=.*?remake/v?(\d+(?:\.\d+)+(?:(?:%2Bdbg)?[._-]\d+(?:\.\d+)+)?)/?["' >]}i)
  end
end
