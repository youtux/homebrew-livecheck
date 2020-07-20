class OpenMpi
  livecheck do
    url :homepage
    regex(/MPI v?([0-9.]+) release/i)
  end
end
