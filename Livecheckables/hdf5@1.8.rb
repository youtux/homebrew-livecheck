class Hdf5AT18
  livecheck do
    url "https://support.hdfgroup.org/ftp/HDF5/current18/src/"
    regex(/hdf5[._-]v?(\d+(?:\.\d+)+)\.t/i)
  end
end
