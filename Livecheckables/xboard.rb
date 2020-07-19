class Xboard
  livecheck do
    url "https://ftp.gnu.org/gnu/xboard/"
    regex(/href=.*?xboard-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
