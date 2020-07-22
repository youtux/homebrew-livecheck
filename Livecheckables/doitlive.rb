class Doitlive
  livecheck do
    url :stable
    regex(/href=.*?doitlive-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
