class Dwdiff
  livecheck do
    url "https://os.ghalkes.nl/dist/"
    regex(/href="dwdiff-([0-9\.]+)\.t/)
  end
end
