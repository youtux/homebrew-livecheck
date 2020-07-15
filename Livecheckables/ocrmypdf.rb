class Ocrmypdf
  livecheck do
    url "https://pypi.org/simple/ocrmypdf/"
    regex(/href=.*?ocrmypdf-([0-9.]+)\.t/)
  end
end
