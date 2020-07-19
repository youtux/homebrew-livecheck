class Doitlive
  livecheck do
    url :stable
    regex(/href=.*?doitlive-([0-9.]+)\.t/i)
  end
end
