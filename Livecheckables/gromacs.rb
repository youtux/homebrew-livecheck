class Gromacs
  livecheck do
    url "https://ftp.gromacs.org/pub/gromacs/"
    regex(/href="gromacs-([0-9\.]+)\.t/)
  end
end
