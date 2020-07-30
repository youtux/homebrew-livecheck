class Metis
  livecheck do
    url "http://glaros.dtc.umn.edu/gkhome/metis/metis/download"
    regex(%r{href=.*?/metis[._-]v?(\d+(?:\.\d+)+)\.t}i)
  end
end
