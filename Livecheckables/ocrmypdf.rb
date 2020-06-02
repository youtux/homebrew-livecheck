class Ocrmypdf
  livecheck do
    url "https://pypi.org/simple/ocrmypdf/"
    regex(%r{href=".*?/ocrmypdf-([0-9.]+)\.t})
  end
end
