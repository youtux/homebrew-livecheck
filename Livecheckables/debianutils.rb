class Debianutils
  livecheck do
    url "https://packages.qa.debian.org/d/debianutils.html"
    regex(/href=.*?debianutils[._-]v?(\d+(?:.\d+)+).dsc/i)
  end
end
