class Hdf5
  livecheck do
    url "https://www.hdfgroup.org/downloads/hdf5/"
    regex(/Newsletter for HDF5[._-]v?(.*?) Release/i)
  end
end
