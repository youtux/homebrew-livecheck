class Szip
  livecheck do
    url "https://support.hdfgroup.org/ftp/lib-external/szip/"
    regex(%r{href=.*?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end
end
