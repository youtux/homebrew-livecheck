class Gromacs
  livecheck do
    url "https://ftp.gromacs.org/pub/gromacs/"
    regex(/href=.*?gromacs-v?(\d+(?:\.\d+)*)\.t/i)
  end
end
