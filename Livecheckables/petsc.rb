class Petsc
  livecheck do
    url "https://www.mcs.anl.gov/petsc/download/index.html"
    regex(/href=.*?petsc-lite-([0-9.]+)\.t/i)
  end
end
