class Ocrmypdf
  livecheck do
    url :stable
    regex(/href=.*?ocrmypdf-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
