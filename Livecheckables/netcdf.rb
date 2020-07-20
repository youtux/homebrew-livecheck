class Netcdf
  livecheck do
    url :head
    regex(/^(?:netcdf-|v)?(\d+(?:\.\d+)+)$/i)
  end
end
