class Jpeg
  livecheck do
    url :homepage
    regex(/href=.*?jpegsrc[._-]v?(\d+[a-z]?)\.t/i)
  end
end
