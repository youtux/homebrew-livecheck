class Debianutils
  livecheck do
    url "https://packages.qa.debian.org/d/debianutils.html"
    regex(/debianutils_(\d+(?:.\d+)+).dsc/i)
  end
end
