class Subversion
  livecheck do
    url :homepage
    regex(/Apache Subversion ([0-9,.]+) Released/i)
  end
end
