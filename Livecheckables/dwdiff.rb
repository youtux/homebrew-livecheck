class Dwdiff
  livecheck do
    url "https://os.ghalkes.nl/dist/"
    regex(/href=.*?dwdiff-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
