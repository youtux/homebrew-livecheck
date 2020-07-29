class Readosm
  livecheck do
    url :homepage
    regex(/href=.*?readosm[._-]v?(\d+(?:\.\d+)+[a-z]?)\.t/i)
  end
end
