class GnuChess
  livecheck do
    url :stable
    regex(/href=.*?gnuchess[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
