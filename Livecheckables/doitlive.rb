class Doitlive
  livecheck do
    url :stable
    regex(/href=.*?doitlive[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
