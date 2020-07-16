class Ocrmypdf
  livecheck do
    url :stable
    regex(/href=.*?ocrmypdf-([0-9.]+)\.t/)
  end
end
