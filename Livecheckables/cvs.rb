class Cvs
  livecheck do
    url "https://ftp.gnu.org/non-gnu/cvs/source/feature/"
    strategy :page_match
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/}i)
  end
end
