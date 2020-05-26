class Petsc
  livecheck do
    url "https://www.mcs.anl.gov/petsc/download/index.html"
    regex(%r{href=".*?/petsc-lite-([0-9\.]+)\.t})
  end
end
