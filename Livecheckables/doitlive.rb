class Doitlive
  livecheck do
    url "https://pypi.org/simple/doitlive/"
    regex(/href=.*?doitlive-([0-9.]+)\.t/)
  end
end
