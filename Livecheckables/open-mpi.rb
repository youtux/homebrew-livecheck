class OpenMpi
  livecheck do
    url "https://www.open-mpi.org/"
    regex(/MPI v?([0-9.]+) release/)
  end
end
