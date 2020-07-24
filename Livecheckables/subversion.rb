class Subversion
  livecheck do
    url :homepage
    regex(/Apache Subversion v?(\d+(?:\.\d+)+) Released/i)
  end
end
