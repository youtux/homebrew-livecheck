class Subversion
  livecheck do
    url "https://subversion.apache.org/"
    regex(/Apache Subversion ([0-9,\.]+) Released/)
  end
end
