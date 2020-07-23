class Petsc
  livecheck do
    url "https://www.mcs.anl.gov/petsc/download/index.html"
    regex(/href=.*?petsc-lite-v?(\d+(?:\.\d+)+)\.t/i)
  end
end
